part of 'di_setup.dart';

Future _registerFirebaseModule() async {
  await Firebase.initializeApp();
  // // Register Dependencies
  // /// Core
  _registerLazySingleton(() => Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform));
  //
  // /// Real-Time Database
  // // _registerLazySingleton(() => FirebaseFirestore.instance);
  //
  // /// Auth
  // // _registerLazySingleton(() => firebaseAuth);
}
