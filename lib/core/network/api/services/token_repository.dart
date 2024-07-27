import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/graphql_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:rxdart/rxdart.dart';

class TokenRepositoryService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GraphQLService _graphQLService;
  final BehaviorSubject<List<FirebaseTokenData>> _tokenStreamController = BehaviorSubject();
  bool _isInitialized = false;

  TokenRepositoryService(this._graphQLService);

  Stream<List<FirebaseTokenData>> get tokenStream {
    if (!_isInitialized) {
      _initializeTokens();
    }
    return _tokenStreamController.stream;
  }

  Future<void> _initializeTokens() async {
    _isInitialized = true;
    await updateTokens(Network.telos); // You might want to update for all networks here
  }

  Future<List<FirebaseTokenData>> getCurrentTokens(Network network) async {
    if (!_isInitialized) {
      await _initializeTokens();
    }
    // Wait for the next emission from the stream
    final tokens = await _tokenStreamController.first;
    // Filter tokens for the specified network
    final filteredTokens = tokens.where((token) => token.network == network.name).toList();
    print('Filtered tokens for ${network.name}: ${filteredTokens.length}');
    return filteredTokens;
  }

  Future<void> updateTokens(Network network) async {
    try {
      // Fetch tokens from Firebase
      final firebaseTokens = await _getTokensFromFirebase(network);
      print("Tokens from Firebase: ${firebaseTokens.length}");

      // Fetch tokens from GraphQL
      final graphQLTokens = await _getTokensFromGraphQL(network);
      print("Tokens from GraphQL: ${graphQLTokens.length}");

      // Consolidate, deduplicate, and sort tokens
      final allTokens = _deduplicateAndSortTokens([...firebaseTokens, ...graphQLTokens]);
      print("Total unique tokens: ${allTokens.length}");

      // Update the stream
      _tokenStreamController.add(allTokens);
    } catch (error) {
      LogHelper.e('Error updating tokens', error: error);
      _tokenStreamController.addError(error);
    }
  }

  List<FirebaseTokenData> _deduplicateAndSortTokens(List<FirebaseTokenData> tokens) {
    final uniqueTokens = <String, FirebaseTokenData>{};
    for (final token in tokens) {
      final key = '${token.network}:${token.contract}:${token.symbol}';
      uniqueTokens[key] = token;
    }
    final sortedTokens = uniqueTokens.values.toList()
      ..sort((a, b) => a.symbol.toLowerCase().compareTo(b.symbol.toLowerCase()));
    print("Deduplicated and sorted tokens: ${sortedTokens.length}");
    return sortedTokens;
  }

  Future<List<FirebaseTokenData>> _getTokensFromFirebase(Network network) async {
    final CollectionReference tokens = _firestore.collection('tokens');
    final QuerySnapshot querySnapshot = await tokens.doc(network.name).collection('tokens').get();
    return querySnapshot.docs.map((QueryDocumentSnapshot<Object?> token) {
      final data = token.data() as Map<String, dynamic>;
      return FirebaseTokenData(
        network: network.name,
        image: data['image'],
        name: data['name'],
        contract: data['contract'],
        symbol: data['symbol'],
        precision: data['precision'],
      );
    }).toList();
  }

  Future<List<FirebaseTokenData>> _getTokensFromGraphQL(Network network) async {
    final String queryString = '''
  query {
    queryDao @cascade(fields: ["settings"]) {
      docId
      details_daoName_n
      settings @cascade(fields: ["settings_rewardToken_a"]) {
        settings_logo_s
        settings_rewardToken_a
        settings_rewardTokenName_s
        settings_rewardTokenContract_n
        settings_pegToken_a
        settings_pegTokenName_s
        settings_pegTokenContract_n
        settings_voiceToken_a
      }
    }
  }
  ''';

    // Format the query string for the GraphQL service
    final formattedQuery = json.encode({"query": queryString.replaceAll(RegExp(r'\s+'), ' ').trim()});

    final result = await _graphQLService.graphQLQuery(
      network: network,
      query: formattedQuery,
    );

    if (result.isValue) {
      print('GraphQL Response:');
      print(JsonEncoder.withIndent('  ').convert(result.asValue!.value));

      // Check if there are any errors in the response
      if (result.asValue!.value['errors'] != null) {
        print('GraphQL Errors:');
        print(JsonEncoder.withIndent('  ').convert(result.asValue!.value['errors']));
        throw Exception('GraphQL query failed: ${result.asValue!.value['errors']}');
      }

      final data = result.asValue!.value['data']['queryDao'] as List<dynamic>;
      final List<FirebaseTokenData> tokens = [];

      for (final dao in data) {
        final settings = dao['settings'] as List<dynamic>;
        for (final setting in settings) {
          String? imageUrl = _formatImageUrl(setting['settings_logo_s']);

          if (setting['settings_rewardToken_a'] != null) {
            tokens.add(FirebaseTokenData(
              network: network.name,
              image: imageUrl ?? '',
              name: setting['settings_rewardTokenName_s'] ?? _parseSymbol(setting['settings_rewardToken_a']),
              contract: setting['settings_rewardTokenContract_n'] ?? 'hypha.hypha',
              symbol: _parseSymbol(setting['settings_rewardToken_a']),
              precision: _parsePrecision(setting['settings_rewardToken_a']),
            ));
          }

          if (setting['settings_pegToken_a'] != null) {
            tokens.add(FirebaseTokenData(
              network: network.name,
              image: imageUrl ?? '',
              name: setting['settings_pegTokenName_s'] ?? _parseSymbol(setting['settings_pegToken_a']),
              contract: setting['settings_pegTokenContract_n'] ?? 'hypha.hypha',
              symbol: _parseSymbol(setting['settings_pegToken_a']),
              precision: _parsePrecision(setting['settings_pegToken_a']),
            ));
          }
        }
      }

      return tokens;
    } else {
      print('GraphQL Error:');
      print(result.asError!.error);
      throw result.asError!.error;
    }
  }

  String _parseSymbol(String? tokenAmount) {
    return tokenAmount?.split(' ').last ?? '';
  }

  int _parsePrecision(String? tokenAmount) {
    return tokenAmount?.split(' ').first.split('.').last.length ?? 0;
  }

  String? _formatImageUrl(String? ipfsCid) {
    if (ipfsCid == null) return null;
    final parts = ipfsCid.split(':');
    if (parts.length != 2) return null;
    final cid = parts[0];
    final extension = parts[1];
    return 'https://4everland.io/ipfs/$cid';
  }

  void dispose() {
    _tokenStreamController.close();
  }
}
