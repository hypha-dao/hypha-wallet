import 'package:hypha_wallet/core/network/models/vote_model.dart';

class CastVoteUseCaseInput {
  final String proposalId;
  final VoteStatus voteStatus;

  CastVoteUseCaseInput(this.proposalId, this.voteStatus);
}