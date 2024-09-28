import 'package:hypha_wallet/core/extension/string_extension.dart'; // Add this import
import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_details_model.g.dart';

enum TokenType {
  utility,
  voice,
  cash,
}

@JsonSerializable()
class ProposalDetailsModel extends BaseProposalModel {
  double? get utilityAmountDouble => utilityAmount?.quantityAsDouble;

  double? get voiceAmountDouble => voiceAmount?.quantityAsDouble;

  double? get cashAmountDouble => cashAmount?.quantityAsDouble;

  double? get utilityAmountPerPeriodDouble =>
      utilityAmountPerPeriod?.quantityAsDouble;

  double? get voiceAmountPerPeriodDouble =>
      voiceAmountPerPeriod?.quantityAsDouble;

  double? get cashAmountPerPeriodDouble =>
      cashAmountPerPeriod?.quantityAsDouble;

  @JsonKey(name: '__typename')
  final String type;

  @JsonKey(name: 'settings_periodDurationSec_i')
  final int? periodDurationSec;

  @JsonKey(name: 'createdDate')
  final DateTime creationDate;

  @JsonKey(name: 'details_deferredPercX100_i')
  final int? tokenMixPercentage;

  @JsonKey(name: 'details_periodCount_i')
  final int? cycleCount;

  @JsonKey(name: 'start')
  final DateTime? cycleStartDate;

  @JsonKey(name: 'details_rewardAmount_a')
  final String? utilityAmount;

  @JsonKey(name: 'details_voiceAmount_a')
  final String? voiceAmount;

  @JsonKey(name: 'details_pegAmount_a')
  final String? cashAmount;

  @JsonKey(name: 'details_rewardSalaryPerPeriod_a')
  final String? utilityAmountPerPeriod;

  @JsonKey(name: 'details_voiceSalaryPerPeriod_a')
  final String? voiceAmountPerPeriod;

  @JsonKey(name: 'details_pegSalaryPerPeriod_a')
  final String? cashAmountPerPeriod;

  @JsonKey(name: 'details_description_s')
  final String? description;

  ProposalDetailsModel(
      {required super.id,
      required this.type,
      required this.creationDate,
      super.dao,
      super.commitment,
      super.title,
      super.unity,
      super.quorum,
      super.expiration,
      super.creator,
      super.votes,
      this.tokenMixPercentage,
      this.cycleCount,
      this.cycleStartDate,
      this.utilityAmount,
      this.voiceAmount,
      this.cashAmount,
      this.utilityAmountPerPeriod,
      this.voiceAmountPerPeriod,
      this.cashAmountPerPeriod,
      this.description,
      this.periodDurationSec});

  factory ProposalDetailsModel.fromJson(Map<String, dynamic> json) {
    // Handle the 'start' field if it's a list
    if (json['start'] is List) {
      if ((json['start'] as List).isNotEmpty) {
        json['start'] = json['start'][0]['details_startTime_t'];
      } else {
        json['start'] = null;
      }
    }
    if (json['dao'] is List) {
      final daoList = json['dao'];
      if (daoList.isNotEmpty &&
          daoList[0] is Map &&
          daoList[0]['settings'] is List) {
        final settingsList = daoList[0]['settings'] as List;
        if (settingsList.isNotEmpty && settingsList[0] is Map) {
          json['settings_periodDurationSec_i'] =
              settingsList[0]['settings_periodDurationSec_i'];
        }
      }
    }
    json['dao'] = null;
    json['creator'] = null;
    return _$ProposalDetailsModelFromJson(json);
  }

  List<VoteModel> fetchVotersByStatus(VoteStatus voteStatus) =>
      votes
          ?.where((vote) => vote.voteStatus == voteStatus)
          .map((vote) => vote)
          .toList() ??
      [];

  void printParentDao() {
    print(super.dao); // Access the dao from the parent class
  }
}
