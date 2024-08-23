part of 'proposals_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToProposalDetails(ProposalModel proposal) = _NavigateToProposalDetails;
}