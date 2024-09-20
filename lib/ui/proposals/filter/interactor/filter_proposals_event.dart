part of 'filter_proposals_bloc.dart';

@freezed
class FilterProposalsEvent with _$FilterProposalsEvent {
  const factory FilterProposalsEvent.initial() = _Initial;
  const factory FilterProposalsEvent.saveFilters(List<DaoProposalCountEntity> daoProposalCounts, FilterStatus filterStatus) = _SaveFilters;
  const factory FilterProposalsEvent.clearPageCommand() = _ClearPageCommand;
}
