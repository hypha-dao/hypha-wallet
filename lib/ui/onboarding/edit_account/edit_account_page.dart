import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_full_page_progress_indicator.dart';
import 'package:hypha_wallet/ui/onboarding/create_account_success_page.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/edit_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountPage extends StatelessWidget {
  final PageParams _pageParams;

  const EditAccountPage(this._pageParams, {super.key});

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

          context.read<EditAccountBloc>().add(const EditAccountEvent.clearPageCommand());
        },
        child: const EditAccountView(),
      ),
    );
  }
}

class PageParams {
  final XFile? file;
  final String name;
  final Network network;

  const PageParams({this.file, required this.name, required this.network});
}
