import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DateTime timestamp;
  final String? transactionId;
  final String account;
  final String actionName;
  final Map<String, dynamic> data;

  const TransactionModel({
    required this.data,
    required this.actionName,
    required this.account,
    required this.timestamp,
    required this.transactionId,
  });

  @override
  List<Object?> get props => [transactionId];

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      account: json['act']['account'],
      actionName: json['act']['name'],
      data: json['act']['data'],
      timestamp: parseTimestamp(json['@timestamp']),
      transactionId: json['trx_id'],
    );
  }

  factory TransactionModel.fromJsonMongo(Map<String, dynamic> json) {
    return TransactionModel(
      account: json['act']['account'],
      actionName: json['act']['name'],
      data: json['act']['data'],
      timestamp: parseTimestamp(json['@timestamp']),
      transactionId: json['trx_id'],
    );
  }

// static TransactionModel? fromTransaction(GenericTransactionModel genericModel) {
//   if (genericModel.transaction.isTransfer) {
//     final action = genericModel.transaction.actions.first;
//     final data = action.data;
//     final String? from = data?['from'];
//     final String? to = data?['to'];
//     final String? quantity = data?['quantity'];
//     final String memo = data?['memo'] ?? "";
//     if (from != null && to != null && quantity != null) {
//       return TransactionModel(
//         from: from,
//         to: to,
//         quantity: quantity,
//         memo: memo,
//         timestamp: genericModel.timestamp ?? DateTime.now().toUtc(),
//         transactionId: genericModel.transactionId,
//       );
//     }
//   }
//
//   return null;
// }
}

DateTime parseTimestamp(String timestamp) {
  // Note: Timestamps always come as UTC but don't have the time zone set on EOSIO
  return DateTime.parse('${timestamp}Z');
}
