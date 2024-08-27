import 'package:flutter/material.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';

typedef SuccessWidgetBuilder = Widget Function(BuildContext context);
typedef LoadingWidgetBuilder = Widget Function(BuildContext context);
typedef FailureWidgetBuilder = Widget Function(BuildContext context);
typedef InitialWidgetBuilder = Widget Function(BuildContext context);

/// Generic Widget to be used mostly inside a Scaffold body
/// You must pass at least a page state and a success widget
class HyphaBodyWidget extends StatelessWidget {
  final PageState pageState;
  final SuccessWidgetBuilder success;
  final InitialWidgetBuilder? initial;
  final LoadingWidgetBuilder? loading;
  final FailureWidgetBuilder? failure;

  const HyphaBodyWidget({
    super.key,
    required this.pageState,
    required this.success,
    this.initial,
    this.loading,
    this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          switch (pageState) {
            case PageState.initial:
              return initial?.call(context) ?? const SizedBox.shrink();
            case PageState.loading:
              return loading?.call(context) ?? const Center(child: CircularProgressIndicator.adaptive());
            case PageState.failure:
              return failure?.call(context) ?? const HyphaErrorWidget();
            case PageState.success:
              return GestureDetector(onTap: () => FocusScope.of(context).unfocus(), child: success(context));
          }
        },
      ),
    );
  }
}
