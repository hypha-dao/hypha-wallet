import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:intl/intl.dart';

extension ProposalDetailsModelExtension on ProposalDetailsModel {
  double tokenMixToPercent() => tokenMixPercentage == null ? 0 : tokenMixPercentage! * .01;

  String formatCycleStartDate() => cycleStartDate != null ? DateFormat('EEEE, MMMM yyyy').format(cycleStartDate!) : '';

  String cycleEndDate() => DateFormat('EEEE, MMMM yyyy').format(cycleStartDate!.add(Duration(days: cycleCount! * 7)));

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

  // TODO(Saif): adjust this function
  String? tokenValue(int index, bool isOneCycleRewardsShown) {
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

    final RegExp regExp = RegExp(r'(\S+)\s');
    final match = regExp.firstMatch(input);

    return match?.group(1);
  }
}
