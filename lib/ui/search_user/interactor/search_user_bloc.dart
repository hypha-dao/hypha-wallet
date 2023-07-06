import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/search_user/usecases/search_for_user_use_case.dart';
import 'package:rxdart/rxdart.dart';

part 'page_command.dart';

part 'search_user_bloc.freezed.dart';

part 'search_user_event.dart';

part 'search_user_state.dart';

class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  final int _minTextLengthBeforeValidSearch = 2;
  final SearchForMemberUseCase searchForMemberUseCase;

  SearchUserBloc(this.searchForMemberUseCase) : super(const SearchUserState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnSearchQueryChanged>(_onSearchQueryChanged, transformer: _transformEvents);
    on<_OnClearIconTapped>(_onClearIconTapped);
  }

  Future<void> _initial(_Initial event, Emitter<SearchUserState> emit) async {}

  /// Debounce to avoid making search network calls each time the user types
  /// switchMap: To remove the previous event. Every time a new Stream is created, the previous Stream is discarded.
  Stream<_OnSearchQueryChanged> _transformEvents(
      Stream<_OnSearchQueryChanged> events, Stream<_OnSearchQueryChanged> Function(_OnSearchQueryChanged) transitionFn) {
    return events.debounceTime(const Duration(milliseconds: 300)).switchMap(transitionFn);
  }

  Future<void> _onSearchQueryChanged(_OnSearchQueryChanged event, Emitter<SearchUserState> emit) async {
    emit(state.copyWith(pageState: PageState.loading, showClearIcon: event.query.isNotEmpty));
    if (event.query.length > _minTextLengthBeforeValidSearch) {
      final Result<List<UserProfileData>, HyphaError> results = await searchForMemberUseCase.run(event.query.toLowerCase());
      if(results.isValue) {
        emit(state.copyWith(users: results.asValue!.value, pageState: PageState.success));
      } else {
        emit(state.copyWith(pageState: PageState.failure));
      }
    } else {
      emit(state.copyWith(pageState: PageState.success));
    }
  }

  void _onClearIconTapped(_OnClearIconTapped event, Emitter<SearchUserState> emit) {
    emit(const SearchUserState());
  }
}
