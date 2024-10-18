import 'package:hypha_wallet/core/network/models/dao_data_model.dart';

class ProposalCreationModel {
  final String? id;
  final String? title;
  final String? details;
  final DaoData? dao;
  final String? type;

  ProposalCreationModel(
      {this.type, this.dao, this.id, this.title, this.details});

  ProposalCreationModel copyWith(Map<String, dynamic> updates) {
    return ProposalCreationModel(
      id: updates.containsKey('id') ? updates['id'] : id,
      title: updates.containsKey('title') ? updates['title'] : title,
      details: updates.containsKey('details') ? updates['details'] : details,
      dao: updates.containsKey('dao') ? updates['dao'] : dao,
      type: updates.containsKey('type') ? updates['type'] : type,
    );
  }
}
