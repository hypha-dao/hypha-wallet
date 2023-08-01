// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:ui';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/profile_upload_repository.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/initialize_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/ppp_sign_up_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import './mocks/mock_shared_preferences.dart';

mixin MockUseCase {
  bool isFailing = false;
  bool error = false;
  bool wasCalled = false;
  int callCounter = 0;

  void Function(MockUseCase useCase, int callCounter)? onCall;

  Future<Result<bool, HyphaError>> genericRun() async {
    callCounter++;
    wasCalled = true;
    onCall?.call(this, callCounter);
    if (error) {
      throw HyphaError.generic('unit test error');
    }
    //await Future.delayed(const Duration(milliseconds: 10), () {});
    if (isFailing) {
      return Result.value(false);
    } else {
      return Result.value(true);
    }
  }
}

class MockSignupUseCase extends PPPSignUpUseCase with MockUseCase {
  MockSignupUseCase(super.amplifyService);
  @override
  Future<Result<bool, HyphaError>> run(UserProfileData user) async {
    return genericRun();
  }
}

class MockProfileLoginUseCase extends ProfileLoginUseCase with MockUseCase {
  MockProfileLoginUseCase(super.amplifyService);
  @override
  Future<Result<bool, HyphaError>> run(UserProfileData user) async {
    return genericRun();
  }
}

class MockInitializeProfileUseCase extends InitializeProfileUseCase with MockUseCase {
  MockInitializeProfileUseCase(super.amplifyService);
  @override
  Future<Result<bool, HyphaError>> run({required UserProfileData user, required String name}) async {
    return genericRun();
  }
}

class MockSetImageUseCase extends SetImageUseCase with MockUseCase {
  MockSetImageUseCase(super.amplifyService, super._profileLoginUseCase);
  @override
  Future<Result<bool, HyphaError>> runFileName(String filePath, UserProfileData user) async {
    return genericRun();
  }

  @override
  Future<Result<bool, HyphaError>> run(XFile image, UserProfileData user) async {
    return genericRun();
  }

  @override
  Future<Result<bool, HyphaError>> runFile(File imageFile, UserProfileData user) async {
    return genericRun();
  }
}

void main() {
  final accountName = 'account11111';
  final name = 'Tester Test1';
  final fileName = 'somefile/somewhere.jpg';

  late MockSignupUseCase mockSignupUseCase;
  late MockProfileLoginUseCase mockProfileLoginUseCase;
  late MockInitializeProfileUseCase mockInitializeProfileUseCase;
  late MockSetImageUseCase mockSetImageUseCase;
  late HyphaSharedPrefs prefs;
  late ProfileUploadRepository service;
  late List<MockUseCase> allUseCases;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    DartPluginRegistrant.ensureInitialized();

    final mockAmplifyService = AmplifyService(
        EOSService(SecureStorageService(const FlutterSecureStorage()), RemoteConfigService()), NetworkingManager(''));
    mockSignupUseCase = MockSignupUseCase(mockAmplifyService);
    mockProfileLoginUseCase = MockProfileLoginUseCase(mockAmplifyService);
    mockInitializeProfileUseCase = MockInitializeProfileUseCase(mockAmplifyService);
    mockSetImageUseCase = MockSetImageUseCase(mockAmplifyService, mockProfileLoginUseCase);
    prefs = HyphaSharedPrefs(RxSharedPreferences(MockSharedPreferences()));

    service = ProfileUploadRepository(
      prefs,
      mockSignupUseCase,
      mockProfileLoginUseCase,
      mockInitializeProfileUseCase,
      mockSetImageUseCase,
    );

    service.retryDelay = Duration(seconds: 0);

    allUseCases = [
      mockSignupUseCase,
      mockProfileLoginUseCase,
      mockInitializeProfileUseCase,
      mockSetImageUseCase,
    ];

    return true;
  });

  test('Test upload and restart', () async {
    await service.scheduleUpload(
      accountName: accountName,
      network: Network.telos,
      userName: name,
      fileName: fileName,
    );
    final data = await prefs.getSignupData();
    expect(data != null, true);
    expect(accountName, data!.accountName);
    expect(name, data.userName);
    expect(fileName, data.fileName);

    await service.start();
    expect(await service.isComplete(), true);
    final data2 = await prefs.getSignupData();
    expect(data2, null);
  });
  test('Test upload without error', () async {
    await service.scheduleUpload(
      accountName: accountName,
      userName: name,
      fileName: fileName,
      network: Network.telos,
    );
    await service.start();
    final data2 = await prefs.getSignupData();
    expect(data2, null);
    expect(await service.isComplete(), true);
    expect(service.isProcessing, false);
    for (final element in allUseCases) {
      expect(element.wasCalled, true);
    }
  });

  test('Test upload with error', () async {
    await service.scheduleUpload(
      accountName: accountName,
      userName: name,
      fileName: fileName,
      network: Network.telos,
    );
    allUseCases[1].isFailing = true;
    expect(allUseCases[2].wasCalled, false, reason: '2 was not called 1');

    await service.start();

    final data = await prefs.getSignupData();
    expect(data != null, true);
    expect(data!.step, 1);
    expect(data.isComplete(), false);
    expect(await service.isComplete(), false);

    expect(allUseCases[0].wasCalled, true);
    expect(allUseCases[1].wasCalled, true, reason: 'expect 1 to be called');
    expect(allUseCases[2].wasCalled, false, reason: '2 should not have been called');
    expect(allUseCases[3].wasCalled, false, reason: '3 was not called');

    // just reset the data
    allUseCases[0].wasCalled = false;
    allUseCases[1].wasCalled = false;
    // make it not fail here
    allUseCases[1].isFailing = false;

    // restarting at index 1
    await service.start();

    expect(allUseCases[0].wasCalled, false);
    expect(allUseCases[1].wasCalled, true);
    expect(allUseCases[2].wasCalled, true);
    expect(allUseCases[3].wasCalled, true);
    expect(await service.isComplete(), true);
  });

  test('Test upload that recovers at the 3rd time', () async {
    await service.scheduleUpload(
      accountName: accountName,
      userName: name,
      fileName: fileName,
      network: Network.telos,
    );
    allUseCases[2].isFailing = true;
    allUseCases[2].onCall = (useCase, counter) {
      if (counter == 3) {
        print('third time is the charm!');
        useCase.isFailing = false;
        expect(allUseCases[0].callCounter, 1);
        expect(allUseCases[1].callCounter, 1);
        expect(allUseCases[2].callCounter, 3);
        expect(allUseCases[3].callCounter, 0);

        expect(allUseCases[0].wasCalled, true);
        expect(allUseCases[1].wasCalled, true);
        expect(allUseCases[2].wasCalled, true);
        expect(allUseCases[3].wasCalled, false);
      }
    };
    await service.start();

    // wait for start to try a few times
    await Future.delayed(Duration(milliseconds: 100));

    final data2 = await prefs.getSignupData();
    expect(data2, null);
    expect(await service.isComplete(), true);
    expect(service.isProcessing, false);
    for (final element in allUseCases) {
      expect(element.wasCalled, true);
    }
  });
}
