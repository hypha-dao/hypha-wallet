import 'package:hypha_wallet/core/extension/proposal_state_extension.dart';
import 'package:hypha_wallet/core/extension/proposal_type_extension.dart';
import 'package:hypha_wallet/core/extension/string_extension.dart';

extension MapExtension on Map<String, dynamic> {
  Map<String, dynamic> calculateUnityAndQuorum() {
    if (this['votetally'] != null && this['votetally'].isNotEmpty) {
      final double abstain = (this['votetally'][0]['abstain_votePower_a'] as String).quantityAsDouble;
      final double pass = (this['votetally'][0]['pass_votePower_a'] as String).quantityAsDouble;
      final double fail = (this['votetally'][0]['fail_votePower_a'] as String).quantityAsDouble;

      final double unity = (pass + fail > 0) ? pass / (pass + fail) : 0;

      final double supply = (this['details_ballotSupply_a'] as String?)?.quantityAsDouble ?? 0;
      final double quorum = supply > 0 ? (abstain + pass + fail) / supply : 0;

      this['unity'] = unity * 100;
      this['quorum'] = quorum * 100;
    }

    return this;
  }

  bool isValidProposal() {
    final DateTime? ballotExpiration = DateTime.tryParse(this['ballot_expiration_t'] ?? '');
    final bool isBallotExpired = ballotExpiration != null && ballotExpiration.isBefore(DateTime.now());

    final Set<String> validStates = {ProposalState.Approved.string, ProposalState.Rejected.string, ProposalState.Archived.string, ProposalState.Proposed.string};
    final bool isValidState = validStates.contains(this['details_state_s']);

    /// This code checks the proposal type in addition to fixing it in the query, as the proposal can sometimes return unexpected types like 'Assignment'.
    return (this['type'] == ProposalType.Policy.string || this['type'] == ProposalType.Payout.string) && isBallotExpired && isValidState;
  }
}
