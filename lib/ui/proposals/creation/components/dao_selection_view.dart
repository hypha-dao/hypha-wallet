import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/cards/hypha_option_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

class DaoSelectionView extends StatefulWidget {
  const DaoSelectionView({super.key});

  @override
  State<DaoSelectionView> createState() => _DaoSelectionViewState();
}

class _DaoSelectionViewState extends State<DaoSelectionView> {
  late List<DaoData> daos;
  final ValueNotifier<int> selectedDaoIndexNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    daos = GetIt.I.get<ProposalsBloc>().daos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                child: HyphaOptionCard(
                    dao: daos[index], selectedDaoIndexNotifier, index),
              );
            },
          )
        ],
      ),
    );
  }
}
