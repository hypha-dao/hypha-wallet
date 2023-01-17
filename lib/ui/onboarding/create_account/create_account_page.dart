import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_full_page_progress_indicator.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/components/create_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/create_account_success_page.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountPage extends StatelessWidget {
  final XFile? _file;
  final String _name;

  const CreateAccountPage(this._file, this._name, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<CreateAccountBloc>(param1: _file, param2: _name)..add(const CreateAccountEvent.initial()),
      child: BlocListener<CreateAccountBloc, CreateAccountState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            showLoadingDialog: () {
              HyphaFullPageProgressIndicator.show(context);
            },
            hideLoadingDialog: () {
              Navigator.of(context).pop();
            },
            navigateToSuccess: () {
              Get.Get.to(
                () => CreateAccountSuccessPage(
                  accountName: state.userAccount!,
                  name: state.userName,
                  file: state.image,
                ),
                transition: Get.Transition.rightToLeft,
              );
            },
          );

          context.read<CreateAccountBloc>().add(const CreateAccountEvent.clearPageCommand());
        },
        child: const CreateAccountView(),
      ),
    );
  }
}
