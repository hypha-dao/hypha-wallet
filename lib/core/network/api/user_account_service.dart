import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:image_picker/image_picker.dart';

// TODO(Nik): these API calls need your help
class UserAccountService {
  final NetworkingManager networkingManager;

  UserAccountService({required this.networkingManager});

  Future<Response> createUserAccount({
    required String accountName,
    required String userName,
    XFile? image,
  }) async {
    // TODO(Nik): these API calls need your help
    return await Future.delayed(Duration(seconds: 3))
        .then((value) => Response(data: true, requestOptions: RequestOptions(path: 'MOCK')));
    // return await dioClient.post(Endpoints.userAccountAvailable, data: {
    //   'userAccount': userAccount,
    // });
  }

  Future<bool> isUserAccountAvailable(String accountName) async {
    final requestBody = '{ "account_name": "$accountName" }';
    try {
      final res = networkingManager.post(Endpoints.getAccount, data: requestBody);
      return false;
    } catch (error) {
      return true;
    }
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    var sequence = 0;
    final maxTries = 100;

    while (sequence < maxTries) {
      var accountName = generateUserName(fullName: fullName, sequence: sequence);
      final available = await isUserAccountAvailable(accountName);
      if (available) {
        return accountName;
      }
      sequence++;
    }

    return generateUserName(fullName: fullName);
  }

  /// Generate a valid EOSIO account name from an input name; generates
  /// unique name for each sequence number.
  ///
  /// Result is always 12 characters long, containing letters [a-z] and numbers [1-5]
  ///
  /// full name: Any string, e.g. 'Jhonny Hypha'
  /// sequence: generator sequence number - each unique sequence number generates a unique
  /// valid EOS account name.
  String generateUserName({required String fullName, int sequence = 0}) {
    String suggestedUsername = fullName.toLowerCase().trim().split('').map((character) {
      // ignore: unnecessary_raw_strings
      final legalChar = RegExp(r'[a-z]|1|2|3|4|5').allMatches(character).isNotEmpty;
      return legalChar ? character : '';
    }).join();

    suggestedUsername = suggestedUsername.padRight(12, '1');

    suggestedUsername = suggestedUsername.substring(0, 12);

    if (sequence > 0) {
      //print('$sequence radix ${sequence.toRadixString(4)}');
      final postfix = sequence.toRadixString(4).split('').map((e) => e.incrementString()).join();
      //print('postfix $postfix');
      suggestedUsername = suggestedUsername.replaceRange(12 - postfix.length, 12, postfix);
    }

    return suggestedUsername;
  }
}

extension NumString on String {
  /// add 1 to a number,e.g '2' -> '3'
  String incrementString() {
    return (int.parse(this) + 1).toString();
  }
}
