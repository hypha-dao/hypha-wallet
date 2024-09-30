part of 'proposals_history_bloc.dart';

@freezed
class ProposalsHistoryState with _$ProposalsHistoryState {
  const factory ProposalsHistoryState({
    @Default(PageState.initial) PageState pageState,
    @Default([]) List<ProposalModel> proposals,
  }) = _ProposalsHistoryState;
}
