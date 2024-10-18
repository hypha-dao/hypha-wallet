import 'package:flutter/cupertino.dart';

enum OutcomeType {
  agreement,
  oneTimePayment,
  recurringPayment,
}

extension OutcomeTypeExtension on OutcomeType {
  String get label {
    switch (this) {
      case OutcomeType.agreement:
        return 'Agreement';
      case OutcomeType.oneTimePayment:
        return 'One Time Payment';
      case OutcomeType.recurringPayment:
        return 'Recurring Payment';
    }
  }
}

class OutcomeModel {
  final IconData icon;
  final OutcomeType type;
  final String details;

  OutcomeModel({required this.icon, required this.type, required this.details});
}
