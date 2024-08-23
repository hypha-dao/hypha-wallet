part of 'proposals_bloc.dart';

@freezed
class ProposalsEvent with _$ProposalsEvent {
  const factory ProposalsEvent.initial({@Default(false) bool refresh}) = _Initial;
  const factory ProposalsEvent.clearPageCommand() = _ClearPageCommand;
}