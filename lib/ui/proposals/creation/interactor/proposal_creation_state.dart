part of 'proposal_creation_bloc.dart';

@freezed
class ProposalCreationState with _$ProposalCreationState {
  const factory ProposalCreationState({
    required PageState pageState,
    required int currentViewIndex,
    required ProposalCreationModel proposal,
    PageCommand? command,
  }) = _ProposalCreationState;

  factory ProposalCreationState.initial() {
    return ProposalCreationState(
      pageState: PageState.initial,
      currentViewIndex: 0,
      proposal: ProposalCreationModel(),
    );
  }
}
