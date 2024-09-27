import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/filter/components/hypha_filter_card.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_proposals_bloc.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class FilterProposalsView extends StatelessWidget {
  FilterProposalsView({super.key});

  final List<String> _statusFilters = ['Active Proposals', 'Past Proposals'];

  @override
  Widget build(BuildContext context) {
    final FilterProposalsBloc filterProposalsBloc = context.read<FilterProposalsBloc>();
    return Scaffold(
      backgroundColor: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      appBar: AppBar(
        title: const Text('Filter Proposals'),
      ),
      body: BlocBuilder<FilterProposalsBloc, FilterProposalsState>(
        builder: (context, state) {
          return HyphaBodyWidget(pageState: state.pageState, success: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filter by your DAOs',
                    style: context.hyphaTextTheme.ralMediumBody
                        .copyWith(color: HyphaColors.midGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ...List.generate(
                    state.daoProposalCounts.length,
                    (index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: HyphaFilterCard(
                            dao: state.daoProposalCounts[index].dao,
                            subTitle: '${state.daoProposalCounts[index].proposalCount} ${filterProposalsBloc.selectedStatusIndexNotifier.value == 0 ? 'Active' : 'Past'} Proposal${state.daoProposalCounts[index].proposalCount == 1 ? '' : 's'}',
                            filterProposalsBloc.selectedDaoIndexNotifier,
                            index
                          ));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Filter By Status',
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                    ),
                  ),
                  ...List.generate(
                    2,
                    (index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: HyphaFilterCard(
                            title: _statusFilters[index],
                            filterProposalsBloc.selectedStatusIndexNotifier,
                            index,
                          ));
                    },
                  ),
                  const Spacer(),
                  HyphaAppButton(
                    title: 'SAVE FILTERS',
                    onPressed: () {
                      final int? index = filterProposalsBloc.selectedDaoIndexNotifier.value;
                      filterProposalsBloc.add(FilterProposalsEvent.saveFilters(index == null ? state.daoProposalCounts : [state.daoProposalCounts[index]], filterProposalsBloc.selectedStatusIndexNotifier.value == 0 ? FilterStatus.active : FilterStatus.past));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            );
            }
          );
        },
      ),
    );
  }
}
