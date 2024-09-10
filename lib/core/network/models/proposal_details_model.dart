import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_details_model.g.dart';

@JsonSerializable()
class ProposalDetailsModel extends BaseProposalModel {
  @JsonKey(name: '__typename')
  final String type;

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

  ProposalDetailsModel({
    required super.id,
    required super.creator,
    required this.type,
    required this.creationDate,
    super.daoName,
    super.commitment,
    super.title,
    super.unity,
    super.quorum,
    super.expiration,
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
    this.description
  });

  factory ProposalDetailsModel.fromJson(Map<String, dynamic> json) {
    json['pass'] = json['pass']['count'];
    json['fail'] = json['fail']['count'];
    if(json['start'] is List){
      if((json['start'] as List).isNotEmpty){
        json['start'] = json['start'][0]['details_startTime_t'];
      }
      else{
        json['start']=null;
      }
    }
    // TODO(Saif): check this
    if(json['dao'] != null) {
      json['dao'] = json['dao'][0]['settings'][0]['settings_daoTitle_s'];
    }
    return _$ProposalDetailsModelFromJson(json);
  }

  List<VoteModel> fetchVotersByStatus(VoteStatus voteStatus) => votes
      ?.where((vote) => vote.voteStatus == voteStatus)
      .map((vote) => vote)
      .toList() ?? [];
}
