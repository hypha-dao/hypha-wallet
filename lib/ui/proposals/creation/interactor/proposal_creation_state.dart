part of 'proposal_creation_bloc.dart';

@freezed
class ProposalCreationState with _$ProposalCreationState {
  const factory ProposalCreationState({
    @Default(PageState.initial) PageState pageState,
    @Default(0) int currentViewIndex,
    ProposalCreationModel? proposal,
    PageCommand? command,
  }) = _ProposalCreationState;
}
