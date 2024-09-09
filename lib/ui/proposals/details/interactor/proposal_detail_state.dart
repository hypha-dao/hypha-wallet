part of 'proposal_detail_bloc.dart';

@freezed
class ProposalDetailState with _$ProposalDetailState {
  const factory ProposalDetailState({
    @Default(PageState.initial) PageState pageState,
     ProposalDetailsModel? proposalDetailsModel,
  }) = _ProposalDetailState;
}
