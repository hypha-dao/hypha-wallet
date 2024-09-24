part of 'proposals_history_bloc.dart';

@freezed
class ProposalsHistoryEvent with _$ProposalsHistoryEvent {
  const factory ProposalsHistoryEvent.initial({@Default(false) bool refresh}) = _Initial;
}
