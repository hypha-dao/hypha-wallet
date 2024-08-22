part of 'proposals_bloc.dart';

@freezed
class ProposalsEvent with _$ProposalsEvent {
  const factory ProposalsEvent.initial() = _Initial;
  const factory ProposalsEvent.clearPageCommand() = _ClearPageCommand;
}