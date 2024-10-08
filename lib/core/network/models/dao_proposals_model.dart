import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';

class DaoProposalsModel {
  final DaoData dao;
  final List<ProposalModel> proposals;
  DaoProposalsModel({required this.dao, required this.proposals});
}
