part of 'proposals_bloc.dart';

@freezed
class ProposalsEvent with _$ProposalsEvent {
  const factory ProposalsEvent.initial({
    @Default(false) bool refresh,
    @Default(FilterStatus.active) FilterStatus filterStatus,
  }) = _Initial;
  const factory ProposalsEvent.load(Function callBack) = _Load;
}
