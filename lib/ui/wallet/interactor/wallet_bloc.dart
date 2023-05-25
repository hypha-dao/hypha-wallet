import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/wallet/data/token_data.dart';

part 'page_command.dart';

part 'wallet_bloc.freezed.dart';

part 'wallet_event.dart';

part 'wallet_state.dart';

const tokens = [
  TokenData(amount: 3000.00, image: 'https://picsum.photos/200', name: 'Hypha'),
  TokenData(amount: 2500.00, image: 'https://picsum.photos/200', name: 'AweToken'),
  TokenData(amount: 1500.00, image: 'https://picsum.photos/200', name: 'Gery Token'),
  TokenData(amount: 500.00, image: 'https://picsum.photos/200', name: 'Nik Token'),
  TokenData(amount: 100.00, image: 'https://picsum.photos/200', name: 'Pepe Token'),
  TokenData(amount: 10.00, image: 'https://picsum.photos/200', name: 'Kaka Token'),
  TokenData(amount: 0.00, image: 'https://picsum.photos/200', name: 'Feo Token'),
  TokenData(amount: 2736728280.00, image: 'https://picsum.photos/200', name: 'Mucho Token'),
];

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<WalletState> emit) async {
    emit(state.copyWith(pageState: PageState.success, tokens: tokens));
  }
}
