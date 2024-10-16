part of 'proposal_creation_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateBackToProposals() = _NavigateBackToProposals;
  const factory PageCommand.navigateToSuccessPage() = _NavigateToSuccessPage;
  const factory PageCommand.navigateToFailurePage(HyphaError hyphaError) = _NavigateToFailurePage;
}
