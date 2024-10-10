part of 'proposal_creation_bloc.dart';

@freezed
class ProposalCreationState with _$ProposalCreationState {
  const factory ProposalCreationState({
    @Default(PageState.initial) PageState pageState,
    ProposalCreationModel? proposal,
    @Default(0) int currentViewIndex,
    PageCommand? command,
  }) = _ProposalCreationState;
}
