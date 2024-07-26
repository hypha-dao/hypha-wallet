import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/graphql_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';

class TokenRepositoryService {
  final FirebaseFirestore _firestore;
  final GraphQLService _graphQLService;
  final StreamController<List<FirebaseTokenData>> _tokenStreamController =
      StreamController<List<FirebaseTokenData>>.broadcast();

  TokenRepositoryService(this._firestore, this._graphQLService);

  Stream<List<FirebaseTokenData>> get tokenStream => _tokenStreamController.stream;

  Future<void> updateTokens(Network network) async {
    try {
      // Fetch tokens from Firebase
      final firebaseTokens = await _getTokensFromFirebase(network);

      // Fetch tokens from GraphQL
      final graphQLTokens = await _getTokensFromGraphQL(network);

      // Consolidate tokens
      final allTokens = [...firebaseTokens, ...graphQLTokens];

      // Update the stream
      _tokenStreamController.add(allTokens);
    } catch (error) {
      LogHelper.e('Error updating tokens', error: error);
      _tokenStreamController.addError(error);
    }
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
    final result = await _graphQLService.graphQLQuery(
      network: network,
      query: '''
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
      ''',
    );

    if (result.isValue) {
      final data = result.asValue!.value['queryDao'] as List<dynamic>;
      List<FirebaseTokenData> tokens = [];

      for (var token in data) {
        final settings = token['settings'] as List<dynamic>;
        for (var setting in settings) {
          if (setting['settings_rewardToken_a'] != null) {
            tokens.add(FirebaseTokenData(
              network: network.name,
              image: setting['settings_logo_s'],
              name: setting['settings_rewardTokenName_s'],
              contract: setting['settings_rewardTokenContract_n'] ?? 'hypha.hypha',
              symbol: _parseSymbol(setting['settings_rewardToken_a']),
              precision: _parsePrecision(setting['settings_rewardToken_a']),
            ));
          }

          if (setting['settings_pegToken_a'] != null) {
            tokens.add(FirebaseTokenData(
              network: network.name,
              image: setting['settings_logo_s'],
              name: setting['settings_pegTokenName_s'],
              contract: setting['settings_pegTokenContract_n'] ?? 'hypha.hypha',
              symbol: _parseSymbol(setting['settings_pegToken_a']),
              precision: _parsePrecision(setting['settings_pegToken_a']),
            ));
          }
        }
      }

      return tokens;
    } else {
      throw result.asError!.error;
    }
  }

  String _parseSymbol(String tokenAmount) {
    return tokenAmount.split(' ').last;
  }

  int _parsePrecision(String tokenAmount) {
    return tokenAmount.split(' ').first.split('.').last.length;
  }

  void dispose() {
    _tokenStreamController.close();
  }
}
