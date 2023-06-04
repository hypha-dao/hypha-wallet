import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/add_token_to_user_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/get_all_tokens_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/remove_token_from_user_use_case.dart';

part 'page_command.dart';

part 'token_details_bloc.freezed.dart';

part 'token_details_event.dart';

part 'token_details_state.dart';

class TokenDetailsBloc extends Bloc<TokenDetailsEvent, TokenDetailsState> {
  final AddTokenToUserUseCase _addTokenToUserUseCase;
  final RemoveTokenFromUserUseCase _removeTokenFromUserUseCase;

  TokenDetailsBloc(
    this._removeTokenFromUserUseCase,
    this._addTokenToUserUseCase,
    WalletTokenData tokenData,
  ) : super(TokenDetailsState(token: tokenData)) {
    on<_Initial>(_initial);
    on<_OnSendTapped>(_onSendTapped);
    on<_OnReceiveTapped>(_onReceiveTapped);
    on<_AddTokenToUser>(_addTokenToUser);
    on<_RemoveTokenToUser>(_removeTokenToUser);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<TokenDetailsState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

  }

  FutureOr<void> _addTokenToUser(_AddTokenToUser event, Emitter<TokenDetailsState> emit) async {
    await _addTokenToUserUseCase.run(event.token.id);
  }

  FutureOr<void> _removeTokenToUser(_RemoveTokenToUser event, Emitter<TokenDetailsState> emit) async {
    await _removeTokenFromUserUseCase.run(event.token.id);
  }

  FutureOr<void> _onSendTapped(_OnSendTapped event, Emitter<TokenDetailsState> emit) {}

  FutureOr<void> _onReceiveTapped(_OnReceiveTapped event, Emitter<TokenDetailsState> emit) {}
}
