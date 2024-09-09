import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_details_model.g.dart';

@JsonSerializable()
class ProposalDetailsModel {
  @JsonKey(name: 'docId')
  final String id;

  @JsonKey(name: 'creator')
  final String creator;

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

  @JsonKey(name: 'details_pegAmount_a')
  final String? utilityAmount;

  @JsonKey(name: 'details_voiceAmount_a')
  final String? voiceAmount;

  @JsonKey(name: 'details_rewardAmount_a')
  final String? cashAmount;

  @JsonKey(name: 'details_pegSalaryPerPeriod_a')
  final String? utilityAmountPerPeriod;

  @JsonKey(name: 'details_voiceSalaryPerPeriod_a')
  final String? voiceAmountPerPeriod;

  @JsonKey(name: 'details_rewardSalaryPerPeriod_a')
  final String? cashAmountPerPeriod;

  @JsonKey(name: 'ballot_expiration_t')
  final DateTime? expiration;

  @JsonKey(name: 'details_timeShareX100_i')
  final int? commitment;

  final int? unity;
  @JsonKey(name: 'details_ballotQuorum_i')
  final int? quorum;
  @JsonKey(name: 'details_title_s')
  final String? title;

  @JsonKey(name: 'dao')
  final String? daoName;
  @JsonKey(name: 'details_description_s')
  final String? description;

  @JsonKey(name: 'pass')
  final int? votedYesCount;
  @JsonKey(name: 'fail')
  final int? votedNoCount;

  @JsonKey(name: 'vote')
  final List<VoteModel>? voters;

  ProposalDetailsModel(
    this.creator,
    this.type,
    this.creationDate,
    this.utilityAmountPerPeriod,
    this.voiceAmountPerPeriod,
    this.cashAmountPerPeriod,
    this.unity,
    this.quorum,
    this.voters,
    this.daoName,
    this.votedYesCount,
    this.votedNoCount, {
    required this.id,
    this.title,
    this.commitment,
    this.tokenMixPercentage,
    this.cycleCount,
    this.cashAmount,
    this.cycleStartDate,
    this.voiceAmount,
    this.utilityAmount,
    this.description,
    this.expiration,
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
    json['dao'] = json['dao'][0]['settings'][0]['settings_daoTitle_s'];
    return _$ProposalDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProposalDetailsModelToJson(this);
}
