import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/outcome_model.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/dao_selection_view.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/outcome_selection_view.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/proposal_content_view.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/proposal_review_view.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/failed/sign_transaction_failed_page.dart';
import 'package:hypha_wallet/ui/sign_transaction/success/sign_transaction_success_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tuple/tuple.dart';

class ProposalCreationPage extends StatelessWidget {
  const ProposalCreationPage(this.daos, {super.key});

  final List<DaoData> daos;

  Tuple2<LinearGradient?, Color?> getGradientAndColor(
      BuildContext context, int iconIndex, ProposalCreationState state) {
    LinearGradient? gradient;
    Color? color;

    if (iconIndex == 1) {
      if (state.currentViewIndex == 1 && (state.proposal?.details == null || state.proposal?.title == null)) {
        // TODO(Saif): add a new gradient (not clickable)
        gradient = HyphaColors.gradientBlack;
      } else {
        gradient = HyphaColors.gradientBlu;
      }
    } else if (iconIndex == 0) {
      color = HyphaColors.midGrey.withOpacity(.3);
    }

    return Tuple2<LinearGradient?, Color?>(gradient, color);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProposalCreationBloc>(param1: daos),
      child: BlocConsumer<ProposalCreationBloc, ProposalCreationState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateBackToProposals: () {
              Get.back();
            },
            navigateToSuccessPage: () {
              Get.to(SignTransactionSuccessPage(
                  transactionType: SignSuccessTransactionType.published,
                  proposalId: state.proposal!.id));
            },
            navigateToFailurePage: (HyphaError hyphaError) {
              // TODO(Zied): pass text1 and text2
              Get.to(SignTransactionFailedPage(hyphaError));
            },
          );

          context
              .read<ProposalCreationBloc>()
              .add(const ProposalCreationEvent.clearPageCommand());
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: context.isDarkMode
                  ? HyphaColors.lightBlack
                  : HyphaColors.white,
              automaticallyImplyLeading: false,
              toolbarHeight: 100,
              scrolledUnderElevation: 0,
              title: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.currentViewIndex != 2)
                        SmoothPageIndicator(
                          controller: context
                              .read<ProposalCreationBloc>()
                              .pageController,
                          count: 2,
                          effect: SlideEffect(
                            dotHeight: 10.0,
                            dotWidth: 10.0,
                            activeDotColor: HyphaColors.primaryBlu,
                            dotColor: HyphaColors.lightBlue.withOpacity(.2),
                          ),
                        ),
                      const SizedBox(height: 10),
                      Text(
                        state.currentViewIndex == 2
                            ? 'Review & Publish'
                            : 'Create Proposal',
                        style: context.hyphaTextTheme.mediumTitles,
                      ),
                    ],
                  ),
                  const Spacer(),
                  ...List.generate(state.currentViewIndex == 2 ? 1 : 2,
                      (index) {
                    final Tuple2<LinearGradient?, Color?> tuple2 =
                        getGradientAndColor(context, index, state);
                    return GestureDetector(
                      onTap: () {
                        int nextIndex = state.currentViewIndex + (index == 0 ? -1 : 1);
                        if (nextIndex == 3 &&
                            state.currentViewIndex == 4 &&
                            state.proposal?.type ==
                                OutcomeType.agreement.label) {
                          nextIndex--;
                        }
                        context.read<ProposalCreationBloc>().add(ProposalCreationEvent.updateCurrentView(nextIndex));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          gradient: tuple2.item1,
                          color: tuple2.item2,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 6 : 0),
                          child: Icon(
                            index == 0
                                ? Icons.arrow_back_ios
                                : Icons.arrow_forward_ios,
                            size: 18,
                            color: HyphaColors.offWhite,
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
            body: PageView(
              controller: context.read<ProposalCreationBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const DaoSelectionView(),
                const ProposalContentView(),
                const ProposalReviewView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
