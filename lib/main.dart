import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hypha_wallet/app.dart';
import 'package:hypha_wallet/core/di/di_setup.dart';
import 'package:hypha_wallet/ui/blocs/bloc_observer.dart';

void main() async {
  // Initialize Flutter
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  await setupDependencies();

  if (kDebugMode) {
    /// Bloc logs only in debug (for better performance in release)
    Bloc.observer = DebugBlocObserver();
  }

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const HyphaApp());
}
