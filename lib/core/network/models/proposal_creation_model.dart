class ProposalCreationModel {
  final String? id;
  final String? title;
  final String? details;

  ProposalCreationModel({this.id, this.title, this.details});

  ProposalCreationModel copyWith(Map<String, dynamic> updates) {
    return ProposalCreationModel(
      id: updates.containsKey('id') ? updates['id'] : id,
      title: updates.containsKey('title') ? updates['title'] : title,
      details: updates.containsKey('details') ? updates['details'] : details,
    );
  }
}