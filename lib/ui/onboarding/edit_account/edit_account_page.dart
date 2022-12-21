import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/edit_account_view.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountPage extends StatelessWidget {
  final XFile? _file;
  final String _name;

  const EditAccountPage(this._file, this._name);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<EditAccountBloc>(param1: _file, param2: _name)..add(const EditAccountEvent.initial()),
      child: BlocListener<EditAccountBloc, EditAccountState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateTo: () {});

          context.read<EditAccountBloc>().add(EditAccountEvent.clearPageCommand());
        },
        child: EditAccountView(),
      ),
    );
  }
}
