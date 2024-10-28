class ProposalCreationModel {
  final String? id;
  final String? title;
  final String? details;
  final String? type; // Note this should be an enum corresponding to contract side types.

  ProposalCreationModel({this.id, this.title, this.details, this.type = 'payout'});

  ProposalCreationModel copyWith(Map<String, dynamic> updates) {
    return ProposalCreationModel(
      id: updates.containsKey('id') ? updates['id'] : id,
      title: updates.containsKey('title') ? updates['title'] : title,
      details: updates.containsKey('details') ? updates['details'] : details,
    );
  }
}
