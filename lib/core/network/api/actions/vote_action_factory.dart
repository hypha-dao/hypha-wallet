import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';

class Voteactionfactory {
  // Vote action
  // Note: Don't hard-code the dao contract since it's different on different networks
  // get daoContract by calling
  //   final daoContract = remoteConfigService.daoContract(network: network);
  //
  static EOSAction voteAction(String daoContract, String voter, int proposalId, String vote) {
    if (vote != 'pass' && vote != 'fail') {
      throw 'vote needs to be one of pass or fail';
    }
    return EOSAction()
      ..account = daoContract
      ..name = 'vote'
      ..data = {
        'voter': voter,
        'proposal_id': proposalId,
        'vote': vote,
      };
  }
}
