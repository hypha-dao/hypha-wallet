enum ProposalState { Approved, Rejected, Archived, Proposed }

extension ProposalStateExtension on ProposalState {
  /// Don't modify these values to uppercase.
  /// If there's a need to capitalize the first letter, create a String extension and use `replaceFirst`.
  String get string {
    switch (this) {
      case ProposalState.Approved:
        return 'approved';
      case ProposalState.Rejected:
        return 'rejected';
      case ProposalState.Archived:
        return 'archived';
      case ProposalState.Proposed:
        return 'proposed';
      default:
        return 'unknown';
    }
  }
}
