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

  String? tokenValue(int index, bool isOneCycleRewardsShown) {
    String? input;
    String? perPeriodInput;

    switch (index) {
      case 0:
        input = utilityAmount;
        perPeriodInput = utilityAmountPerPeriod;
        break;
      case 1:
        input = voiceAmount;
        perPeriodInput = voiceAmountPerPeriod;
        break;
      case 2:
        input = cashAmount;
        perPeriodInput = cashAmountPerPeriod;

        break;
      default:
        return null;
    }
    final RegExp regExp = RegExp(r'(\d+(\.\d+)?)');
    if (input != null) {
      final match = regExp.firstMatch(input);
      if (isOneCycleRewardsShown || cycleCount == 1) return match?.group(1);
      return (double.parse((match?.group(1))!) * cycleCount!)
          .toStringAsFixed(3);
    }
    if (perPeriodInput != null) {
      final match = regExp.firstMatch(perPeriodInput);
      if (isOneCycleRewardsShown && cycleCount != 1) {
        return (double.parse((match?.group(1))!) / cycleCount!)
            .toStringAsFixed(3);
      }
      return match?.group(1);
    }
    return input;
  }
}
