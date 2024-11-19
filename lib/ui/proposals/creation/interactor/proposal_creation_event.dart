part of 'proposal_creation_bloc.dart';

@freezed
class ProposalCreationEvent with _$ProposalCreationEvent {
  const factory ProposalCreationEvent.initialize() = _Initialize;
  const factory ProposalCreationEvent.updateCurrentView(int nextViewIndex) = _UpdateCurrentView;
  const factory ProposalCreationEvent.updateProposal(Map<String, dynamic> updates) = _UpdateProposal;
  const factory ProposalCreationEvent.publishProposal() = _PublishProposal;
  const factory ProposalCreationEvent.clearPageCommand() = _ClearPageCommand;
}
