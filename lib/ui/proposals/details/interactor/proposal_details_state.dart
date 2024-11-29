part of 'proposal_details_bloc.dart';

@freezed
class ProposalDetailsState with _$ProposalDetailsState {
  const factory ProposalDetailsState({
    @Default(PageState.initial) PageState pageState,
    @Default(PageState.initial) PageState votingState,
     ProposalDetailsModel? proposalDetailsModel,
    PageCommand? command,
  }) = _ProposalDetailsState;
}
