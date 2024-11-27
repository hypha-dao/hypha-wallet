part of 'proposal_details_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToSuccessPage() = _NavigateToSuccessPage;
  const factory PageCommand.navigateToFailurePage(HyphaError hyphaError) = _NavigateToFailurePage;
}
