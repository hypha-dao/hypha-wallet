part of 'proposal_details_bloc.dart';

@freezed
class ProposalDetailsEvent with _$ProposalDetailsEvent {
  const factory ProposalDetailsEvent.initial() = _Initial;
  const factory ProposalDetailsEvent.castVote(VoteStatus voteStatus) = _CastVote;
  const factory ProposalDetailsEvent.clearPageCommand() = _ClearPageCommand;
}
