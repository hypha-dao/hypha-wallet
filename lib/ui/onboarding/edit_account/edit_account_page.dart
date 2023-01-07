import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_full_page_progress_indicator.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/edit_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountPage extends StatelessWidget {
  final PageParams _pageParams;

  const EditAccountPage(this._pageParams);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<EditAccountBloc>(param1: _pageParams)..add(const EditAccountEvent.initial()),
      child: BlocListener<EditAccountBloc, EditAccountState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            showLoadingDialog: () {
              HyphaFullPageProgressIndicator.show(context);
            },
            hideLoadingDialog: () {
              Navigator.of(context).pop();
            },
          );

          context.read<EditAccountBloc>().add(EditAccountEvent.clearPageCommand());
        },
        child: EditAccountView(),
      ),
    );
  }
}

class PageParams {
  final XFile? file;
  final String name;

  const PageParams({this.file, required this.name});
}
