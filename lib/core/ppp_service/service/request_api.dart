// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

/// @desc Enables the interaction with the profile and comms services. When creating the object
/// the activeUser has to be passed into the constructor
/// @see BaseApi
class RequestApi {
  static dynamic post({
    required String endpoint,
    required Map<String, dynamic> body,
    required String apiName,
  }) async {
    try {
      final restOptions = RestOptions(
          path: '/${endpoint}',
          apiName: apiName,
          headers: {
            'Content-Type': 'application/json',
          },
          body: Uint8List.fromList(body.toString().codeUnits));

      final restOperation = Amplify.API.post(restOptions: restOptions);
      final response = await restOperation.response;

      print('POST call succeeded:');
      print(response.body);

      return response.body;
    } catch (err) {
      print(err);
      rethrow;
      // let httpCode = 0;
      // let message = '';
      // if (err.response) {
      //     const {
      //         response: { status, data },
      //     } = err;
      //     httpCode = status;
      //     message = data.message;
      // } else {
      //     message = err.message || err;
      // }
      // throw new RequestError(message, httpCode, err);
    }
  }
}
