part of 'proposal_creation_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateBackToProposals() = _NavigateBackToProposals;
}
