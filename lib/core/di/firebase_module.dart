part of 'di_setup.dart';

Future _registerFirebaseModule() async {
  await Firebase.initializeApp();
  // // Register Dependencies
  // /// Core
  _registerLazySingleton(() => Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform));

  final firebaseDatabase = FirebaseDatabaseService.init();
  _getIt.registerLazySingleton(() => firebaseDatabase);

  final init = FirebasePushNotificationsService.init();
  _getIt.registerLazySingleton(() => init);

  //
  // /// Real-Time Database
  // // _registerLazySingleton(() => FirebaseFirestore.instance);
  //
  // /// Auth
  // // _registerLazySingleton(() => firebaseAuth);
}
