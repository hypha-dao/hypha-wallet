import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_logo.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/components/create_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountPage extends StatelessWidget {
  final XFile? _file;
  final String _name;

  const CreateAccountPage(this._file, this._name);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<CreateAccountBloc>(param1: _file, param2: _name)..add(const CreateAccountEvent.initial()),
      child: BlocListener<CreateAccountBloc, CreateAccountState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(showLoadingDialog: () {
            showGeneralDialog(
              context: context,
              barrierDismissible: false,
              barrierLabel: 'Dialog',
              transitionDuration: Duration(milliseconds: 400),
              pageBuilder: (_, __, ___) {
                return Scaffold(
                  body: OnboardingPageBackground(
                    child: HyphaProgressLogo(),
                  ),
                );
              },
            );
          }, hideLoadingDialog: () {
            Navigator.of(context).pop();
          });

          context.read<CreateAccountBloc>().add(CreateAccountEvent.clearPageCommand());
        },
        child: CreateAccountView(),
      ),
    );
  }
}
