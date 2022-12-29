import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/components/import_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';

class ImportAccountPage extends StatelessWidget {
  const ImportAccountPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ImportAccountBloc>()..add(const ImportAccountEvent.initial()),
      child: BlocListener<ImportAccountBloc, ImportAccountState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateToAccountFound: (accounts) {
            // Get.to(SelectAccountPage(accounts));
          });

          context.read<ImportAccountBloc>().add(ImportAccountEvent.clearPageCommand());
        },
        child: ImportAccountView(),
      ),
    );
  }
}
