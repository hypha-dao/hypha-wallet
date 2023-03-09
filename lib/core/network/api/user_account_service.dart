import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/api/remote_config_serivice.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:image_picker/image_picker.dart';

// TODO(Nik): these API calls need your help
class UserAccountService {
  final NetworkingManager networkingManager;

  UserAccountService({required this.networkingManager});

  Future<Result<bool, HyphaError>> createUserAccount({
    required String code,
    required String accountName,
    required String publicKey,
    required String network,
  }) async {
    final requestBody = '''
    { 
      "code": "$code",
      "accountName": "$accountName",
      "publicKey": "$publicKey",
      "network": "$network",
    }''';

    try {
      // ignore: unused_local_variable
      final res =
          await networkingManager.post(GetIt.I<RemoteConfigService>().accountCreatorEndpoint, data: requestBody);
      return Result.value(true);
    } catch (error) {
      print('Error creating account');
      print(error);
      return Result.error(HyphaError(message: 'Error creating account: $error', type: HyphaErrorType.api));
    }
  }

  Future<bool> isUserAccountAvailable(String accountName) async {
    final requestBody = '{ "account_name": "$accountName" }';
    try {
      final res = await networkingManager.post(Endpoints.getAccount, data: requestBody);
      return false;
    } catch (error) {
      return true;
    }
  }

  Future<String> findAvailableUserAccount(String fullName) async {
    var sequence = 0;
    final maxTries = 100;

    while (sequence < maxTries) {
      final accountName = generateUserName(fullName: fullName, sequence: sequence);
      if (accountName != null) {
        final bool available = await isUserAccountAvailable(accountName);
        if (available) {
          return accountName;
        }
      }
      sequence++;
    }

    return generateUserName(fullName: fullName)!;
  }

  /// Generate a valid EOSIO account name from an input name; generates
  /// unique name for each sequence number.
  ///
  /// Result is always 12 characters long, containing letters [a-z] and numbers [1-5]
  ///
  /// full name: Any string, e.g. 'Jhonny Hypha'
  /// sequence: generator sequence number - each unique sequence number generates a unique
  /// valid EOS account name.
  ///
  /// Returns null if the sequence name is a duplicate
  String? generateUserName({required String fullName, int sequence = 0}) {
    String suggestedUsername = fullName.toLowerCase().trim().split('').map((character) {
      // ignore: unnecessary_raw_strings
      final legalChar = RegExp(r'[a-z]|1|2|3|4|5').allMatches(character).isNotEmpty;
      return legalChar ? character : '';
    }).join();

    suggestedUsername = suggestedUsername.padRight(12, '1');

    suggestedUsername = suggestedUsername.substring(0, 12);

    if (sequence > 0) {
      print('$sequence radix ${(sequence - 1).toRadixString(5)}');
      final postfix = (sequence - 1).toRadixString(5).split('').map((e) => e.incrementString()).join();
      print('postfix $postfix');
      final sequenceName = suggestedUsername.replaceRange(12 - postfix.length, 12, postfix);
      if (sequenceName == suggestedUsername) {
        return null;
      } else {
        suggestedUsername = sequenceName;
      }
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
