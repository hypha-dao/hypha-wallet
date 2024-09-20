part of 'filter_proposals_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToProposals() = _NavigateToProposals;
}
