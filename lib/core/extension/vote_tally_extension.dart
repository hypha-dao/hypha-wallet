extension VoteTallyExtension on Map<String, dynamic> {
  Map<String, dynamic> calculateUnityAndQuorum() {
    if (this['votetally'] != null && this['votetally'].isNotEmpty) {
      double supply = 0;
      final double abstain = _extractVotePower(this['votetally'][0]['abstain_votePower_a'] ?? '0.00');
      final double pass = _extractVotePower(this['votetally'][0]['pass_votePower_a'] ?? '0.00');
      final double fail = _extractVotePower(this['votetally'][0]['fail_votePower_a'] ?? '0.00');
      final double unity = (pass + fail > 0) ? pass / (pass + fail) : 0;

      if (this['details_ballotSupply_a'] != null) {
        final List<String> supplyParts = this['details_ballotSupply_a'].split(' ');
        if (supplyParts.isNotEmpty) {
          supply = double.parse(supplyParts[0]);
        }
      }

      final double quorum = supply > 0 ? (abstain + pass + fail) / supply : 0;

      this['unity'] = unity * 100;
      this['quorum'] = quorum * 100;
    }

    return this;
  }

  double _extractVotePower(String votePower) {
    final List<String> parts = votePower.split(' ');
    return parts.isNotEmpty ? double.parse(parts[0]) : 0.0;
  }
}
