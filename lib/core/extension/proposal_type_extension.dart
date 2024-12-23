enum ProposalType { Policy, Payout }

extension ProposalTypeExtension on ProposalType {
  /// Don't modify these values to uppercase.
  /// If there's a need to lowercase the first letter, use `toLowerCase`.
  String get string {
    switch (this) {
      case ProposalType.Policy:
        return 'Policy';
      case ProposalType.Payout:
        return 'Payout';
      default:
        return 'Unknown';
    }
  }
}
