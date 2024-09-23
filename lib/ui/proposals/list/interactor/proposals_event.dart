part of 'proposals_bloc.dart';

@freezed
class ProposalsEvent with _$ProposalsEvent {
  const factory ProposalsEvent.initial({
    @Default(false) bool refresh,
    List<DaoData>? daos,
    @Default(FilterStatus.active) FilterStatus filterStatus,
  }) = _Initial;
}
