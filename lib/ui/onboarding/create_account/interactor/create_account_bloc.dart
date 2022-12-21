import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:image_picker/image_picker.dart';

part 'create_account_bloc.freezed.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';
part 'page_command.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc(XFile? image, String userName) : super(CreateAccountState(userName: userName, image: image)) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(pageState: PageState.success, userAccount: state.userName + '123'));
  }
}
