part of 'filter_proposals_bloc.dart';

@freezed
class FilterProposalsState with _$FilterProposalsState {
  const factory FilterProposalsState({
    @Default(PageState.initial) PageState pageState,
    @Default([]) List<DaoProposalCountEntity> daoProposalCounts,
    PageCommand? command,
  }) = _FilterProposalsState;
}
