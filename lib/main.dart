import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/app.dart';
import 'package:hypha_wallet/core/di/di_setup.dart';
import 'package:hypha_wallet/ui/blocs/bloc_observer.dart';

void main() async {
  // Initialize Flutter
  WidgetsFlutterBinding.ensureInitialized();

  await setupDependencies();

  if (kDebugMode) {
    /// Bloc logs only in debug (for better performance in release)
    Bloc.observer = DebugBlocObserver();
  }

  runApp(const HyphaApp());
}
