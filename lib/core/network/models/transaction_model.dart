import 'package:equatable/equatable.dart';

const _daoAccount = 'dao.hypha';
const _eosioLoginAccount = 'eosio.login';
sealed class TransactionModel extends Equatable {
  final DateTime timestamp;
  final String account;
  final String actionName;
  final int blockNumber;
  final String actor;
  final String? transactionId;
  final Map<String, dynamic> data;

  const TransactionModel({
    required this.data,
    required this.actionName,
    required this.account,
    required this.timestamp,
    required this.blockNumber,
    required this.actor,
    required this.transactionId,
  });

  @override
  List<Object?> get props => [actionName, data, account, timestamp, blockNumber];

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    final act = json['act'];
    final actionName = act['name'];
    final account = act['account'];
    final data = act['data'];
    final timestamp = parseTimestamp(json['@timestamp']);
    final blockNumber = json['block_num'];
    final actor = act['authorization'].first['actor'];
    final transactionId = json['trx_id'];

    // parse known transactions
    return switch (actionName) {
      'transfer' => TransactionTransfer(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'redeem' when account == _daoAccount => TransactionRedeem(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'cmntadd' when account == _daoAccount => TransactionCommentAdd(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'vote' when account == _daoAccount => TransactionVote(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'claimnextper' when account == _daoAccount => TransactionClaimNextPer(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'propose' when account == _daoAccount => TransactionPropose(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'reactadd' when account == _daoAccount => TransactionReactionAdd(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'loginuser' when account == _eosioLoginAccount => TransactionLogInUser(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      'proposepub' when account == _daoAccount => TransactionProposePub(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
      _ => TransactionUnknown(
          account: account,
          actionName: actionName,
          blockNumber: blockNumber,
          data: data,
          timestamp: timestamp,
          actor: actor,
          transactionId: transactionId,
        ),
    };
  }
}

DateTime parseTimestamp(String timestamp) {
  // Note: Timestamps always come as UTC but don't have the time zone set on EOSIO
  return DateTime.parse('${timestamp}Z');
}

class TransactionTransfer extends TransactionModel {
  String get from => data['from'];

  String get to => data['to'];

  /// 3175.00
  num get amount => data['amount'];

  /// HUSD
  String get symbol => data['symbol'];

  const TransactionTransfer({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionRedeem extends TransactionModel {
  String get daoId => data['dao_id'];

  String get requestor => data['requestor'];

  /// 3175.00 HUSD Beware of this...
  String get amount => (data['amount'] as String).split(' ').first;

  String get symbol => (data['amount'] as String).split(' ')[1];

  const TransactionRedeem({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionCommentAdd extends TransactionModel {
  String get author => data['author'];

  String get content => data['content'];

  String get commentOrSectionId => data['comment_or_section_id'];

  const TransactionCommentAdd({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionVote extends TransactionModel {
  String get voter => data['voter'];

  String get proposalId => data['proposal_id'];

  String get vote => data['vote'];

  String? get notes => data['notes'] == '' ? null : data['notes'];

  const TransactionVote({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionClaimNextPer extends TransactionModel {
  String get assignmentId => data['assignment_id'];

  const TransactionClaimNextPer({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionPropose extends TransactionModel {
  String get daoId => data['dao_id'];

  String get proposer => data['proposer'];

  String get proposalType => data['proposal_type'];

  const TransactionPropose({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionReactionAdd extends TransactionModel {
  String get user => data['user'];

  String get reaction => data['reaction'];

  String get documentId => data['document_id'];

  const TransactionReactionAdd({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionUnknown extends TransactionModel {
  const TransactionUnknown({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionLogInUser extends TransactionModel {
  String get accountName => data['account_name'];

  String get loginCode => data['login_code'];

  const TransactionLogInUser({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}

class TransactionProposePub extends TransactionModel {
  String get proposer => data['proposer'];

  String get proposalId => data['proposal_id'];

  const TransactionProposePub({
    required super.data,
    required super.actionName,
    required super.account,
    required super.timestamp,
    required super.blockNumber,
    required super.actor,
    required super.transactionId,
  });
}
