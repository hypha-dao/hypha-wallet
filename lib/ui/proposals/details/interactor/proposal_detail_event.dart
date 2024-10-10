part of 'proposal_detail_bloc.dart';

@freezed
class ProposalDetailEvent with _$ProposalDetailEvent {
  const factory ProposalDetailEvent.initial() = _Initial;
  const factory ProposalDetailEvent.castVote(VoteStatus vote) = _CastVote;
}
