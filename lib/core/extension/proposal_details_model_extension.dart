import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:intl/intl.dart';

extension ProposalDetailsModelExtension on ProposalDetailsModel {
  double tokenMixToPercent() =>
      tokenMixPercentage == null ? 0 : tokenMixPercentage! * .01;

  String formatCycleStartDate() => cycleStartDate != null
      ? DateFormat('EEEE, MMMM yyyy').format(cycleStartDate!)
      : '';

  String cycleEndDate() => DateFormat('EEEE, MMMM yyyy')
      .format(cycleStartDate!.add(Duration(days: cycleCount! * 7)));

  String? tokenTitle(int index) {
    String input;

    switch (index) {
      case 0:
        input = utilityAmount ?? utilityAmountPerPeriod!;
        break;
      case 1:
        input = voiceAmount ?? voiceAmountPerPeriod!;
        break;
      case 2:
        input = cashAmount ?? cashAmountPerPeriod!;
        break;
      default:
        return null;
    }

    final RegExp regExp = RegExp(r'\d+\s+(.*)');
    final match = regExp.firstMatch(input);

    if (match != null) {
      String result = match.group(1)!;

      if (result.isNotEmpty && index != 0) {
        result = result[0].toLowerCase() + result.substring(1);
      }
      return result;
    }
    return null;
  }

  double? tokenValue(int index, bool isOneCycleRewardsShown) {
    double? tokenAmount;
    double? tokenAmountPerPeriod;
    final int cycleDurationSec = 2629800;
    final double periodsOnCycle = cycleDurationSec / periodDurationSec!;
    switch (index) {
      case 0:
        tokenAmount = utilityAmountDouble;
        tokenAmountPerPeriod = utilityAmountPerPeriodDouble;
        break;
      case 1:
        tokenAmount = voiceAmountDouble;
        tokenAmountPerPeriod = voiceAmountPerPeriodDouble;
        break;
      case 2:
        tokenAmount = cashAmountDouble;
        tokenAmountPerPeriod = cashAmountPerPeriodDouble;

        break;
      default:
        return null;
    }
    if (tokenAmount != null) {
      if (isOneCycleRewardsShown) return tokenAmount;
      return tokenAmount / periodsOnCycle;
    }
    if (tokenAmountPerPeriod != null) {
      if (isOneCycleRewardsShown) {
        return tokenAmountPerPeriod * periodsOnCycle;
      }
      return tokenAmountPerPeriod;
    }
    return tokenAmount;
  }
}

extension TokenTypeExtension on TokenType {
  String get name {
    switch (this) {
      case TokenType.utility:
        return 'Utility Token';
      case TokenType.voice:
        return 'Voice Token';
      case TokenType.cash:
        return 'Cash Token';
      default:
        return '';
    }
  }
}
