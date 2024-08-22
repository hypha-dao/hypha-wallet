part of 'proposals_bloc.dart';

@freezed
class ProposalsState with _$ProposalsState {
  const factory ProposalsState({
    @Default(PageState.initial) PageState pageState,
    @Default([]) List<ProposalModel> proposals,
    PageCommand? command,
  }) = _ProposalsState;
}