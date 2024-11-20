import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/cards/hypha_option_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

class DaoSelectionView extends StatefulWidget {
  const DaoSelectionView({super.key});

  @override
  State<DaoSelectionView> createState() => _DaoSelectionViewState();
}

class _DaoSelectionViewState extends State<DaoSelectionView> {
  late List<DaoData> daos;
  late final ValueNotifier<int> selectedDaoIndexNotifier;

  @override
  void initState() {
    super.initState();
    daos = GetIt.I.get<ProposalsBloc>().daos;
    final ProposalCreationBloc proposalCreationBloc =
        context.read<ProposalCreationBloc>();
    if (proposalCreationBloc.state.proposal?.dao == null) {
      selectedDaoIndexNotifier = ValueNotifier<int>(0);
      proposalCreationBloc.add(
        ProposalCreationEvent.updateProposal(
          {'dao': daos.first},
        ),
      );
    } else {
      selectedDaoIndexNotifier = ValueNotifier<int>(
          daos.indexOf(proposalCreationBloc.state.proposal!.dao!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Text(
            'Select a DAO',
            style: context.hyphaTextTheme.smallTitles
                .copyWith(color: HyphaColors.primaryBlu),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Text(
              'On which of your DAO you want to publish a proposal? Please select one from the list.',
              style: context.hyphaTextTheme.ralMediumBody
                  .copyWith(color: HyphaColors.midGrey),
            ),
          ),
          ...List.generate(
            daos.length,
            (index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: HyphaOptionCard(onTap: () {
                  context.read<ProposalCreationBloc>().add(
                      ProposalCreationEvent.updateProposal(
                          {'dao': daos[index]}));
                }, dao: daos[index], selectedDaoIndexNotifier, index),
              );
            },
          )
        ],
      ),
    );
  }
}
