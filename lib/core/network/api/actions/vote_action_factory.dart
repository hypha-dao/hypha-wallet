import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';

class VoteActionFactory {
  // Vote action
  static EOSAction voteAction(String daoContract, String voter, String proposalId, VoteStatus vote) {
    return EOSAction()
      ..account = daoContract
      ..name = 'vote'
      ..data = {
        'voter': voter,
        'proposal_id': proposalId,
        'vote': vote.name,
        'notes': ''
      };
  }
}
