extension VoteTallyExtension on Map<String, dynamic> {
  Map<String, dynamic> calculateUnityAndQuorum() {
    if (this['votetally'] != null && this['votetally'].isNotEmpty) {
      final double abstain = this['votetally'][0]['abstain_votePower_a'].quantityAsDouble();
      final double pass = this['votetally'][0]['pass_votePower_a'].quantityAsDouble();
      final double fail = this['votetally'][0]['fail_votePower_a'].quantityAsDouble();

      final double unity = (pass + fail > 0) ? pass / (pass + fail) : 0;

      final double supply = this['details_ballotSupply_a']?.quantityAsDouble() ?? 0;
      final double quorum = supply > 0 ? (abstain + pass + fail) / supply : 0;

      this['unity'] = unity * 100;
      this['quorum'] = quorum * 100;
    }

    return this;
  }
}
