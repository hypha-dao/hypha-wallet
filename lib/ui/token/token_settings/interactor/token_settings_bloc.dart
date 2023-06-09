import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/add_token_to_user_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/get_all_tokens_use_case.dart';
import 'package:hypha_wallet/ui/token/token_settings/usecases/remove_token_from_user_use_case.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

part 'page_command.dart';
part 'token_settings_bloc.freezed.dart';
part 'token_settings_event.dart';
part 'token_settings_state.dart';

class TokensSettingsBloc extends Bloc<TokensSettingsEvent, TokensSettingsState> {
  final GetAllTokensUseCase _getAllTokensUseCase;
  final AddTokenToUserUseCase _addTokenToUserUseCase;
  final RemoveTokenFromUserUseCase _removeTokenFromUserUseCase;

  TokensSettingsBloc(
    this._getAllTokensUseCase,
    this._removeTokenFromUserUseCase,
    this._addTokenToUserUseCase,
  ) : super(const TokensSettingsState()) {
    on<_Initial>(_initial);
    on<_AddTokenToUser>(_addTokenToUser);
    on<_RemoveTokenToUser>(_removeTokenToUser);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<TokensSettingsState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Stream<List<WalletTokenData>> tokens = await _getAllTokensUseCase.run();
    await emit.forEach(tokens, onData: (List<WalletTokenData> data) {
      return state.copyWith(pageState: PageState.success, tokens: data);
    });
  }

  FutureOr<void> _addTokenToUser(_AddTokenToUser event, Emitter<TokensSettingsState> emit) async {
    await _addTokenToUserUseCase.run(event.token.id);
  }

  FutureOr<void> _removeTokenToUser(_RemoveTokenToUser event, Emitter<TokensSettingsState> emit) async {
    await _removeTokenFromUserUseCase.run(event.token.id);
  }
}
