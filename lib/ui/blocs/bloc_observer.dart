import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/app.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

/// Custom [BlocObserver] which observes all bloc and cubit instances.
/// Their life cycles events.
///
/// Every event of BlocObserver has a reference to a cubit/bloc instance that sends the event.
/// So you can compare it with the reference with your specific cubit/bloc instance.
/// And if references are equal you can handle it somehow
///
/// ```dart
///   class MyObserver extends BlocObserver {
///
///   final Cubit<Object> _cubit;
///
///   MyObserver(this._cubit) : assert(_cubit != null);
///
///   @override
///   void onClose(Cubit cubit) {
///     if (cubit == _cubit) {
///       // do whatever you need
///     }
///
///     super.onClose(cubit);
///   }
/// }
/// ```
class DebugBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (!kLogQuietMode) LogHelper.d(event.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (!kLogQuietMode) LogHelper.d(transition.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    LogHelper.d(error.toString(), stacktrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
