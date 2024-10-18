import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/network/models/outcome_model.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';

class HyphaOutcomeCard extends StatelessWidget {
  final OutcomeModel outcomeModel;
  final ValueNotifier<int> valueNotifier;
  final int index;

  const HyphaOutcomeCard(
    this.outcomeModel,
    this.valueNotifier,
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        valueNotifier.value = index;
        context.read<ProposalCreationBloc>().add(
              ProposalCreationEvent.updateProposal(
                {'type': outcomeModel.type.label},
              ),
            );
      },
      child: HyphaCard(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Transform.rotate(
                    angle: index == 1 ? -3.14 / 3 : 0,
                    child: Icon(
                      outcomeModel.icon,
                      color: HyphaColors.primaryBlu,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    outcomeModel.type.label,
                    style: context.hyphaTextTheme.smallTitles,
                  ),
                  const Spacer(),
                  ValueListenableBuilder<int>(
                    valueListenable: valueNotifier,
                    builder: (context, selectedIndex, child) {
                      return CircleAvatar(
                        radius: 12,
                        backgroundColor: selectedIndex == index
                            ? HyphaColors.primaryBlu
                            : HyphaColors.midGrey.withOpacity(.3),
                        child: CircleAvatar(
                          radius: selectedIndex == index ? 4 : 10.5,
                          backgroundColor: selectedIndex == index
                              ? HyphaColors.white
                              : HyphaColors.lightBlack,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                outcomeModel.details,
                style: context.hyphaTextTheme.ralMediumBody.copyWith(
                  color: HyphaColors.midGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
