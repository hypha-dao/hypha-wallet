class ProposalCreationModel {
  final String? title;
  final String? details;

  ProposalCreationModel({this.title, this.details});

  ProposalCreationModel copyWith(Map<String, dynamic> updates) {
    return ProposalCreationModel(
      title: updates.containsKey('title') ? updates['title'] : title,
      details: updates.containsKey('details') ? updates['details'] : details,
    );
  }
}