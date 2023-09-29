import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/join_dao/interactor/join_dao_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class JoinDaoRationaleBottomSheet extends StatelessWidget {
  final InviteLinkData inviteLinkData;

  const JoinDaoRationaleBottomSheet({super.key, required this.inviteLinkData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      GetIt.I.get<JoinDaoBloc>(param1: inviteLinkData)
        ..add(const JoinDaoEvent.initial()),
      child: BlocBuilder<JoinDaoBloc, JoinDaoState>(
        builder: (context, state) {
          return HyphaBodyWidget(
            pageState: state.pageState,
            success: (context) => DecoratedBox(
              decoration: BoxDecoration(
                gradient: context.isDarkTheme ? HyphaColors.gradientBlack : HyphaColors.gradientWhite,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Do you want to join DAO "${state.daoName}"?', style: context.textTheme.titleSmall),
                    const SizedBox(height: 24),
                    BlocBuilder<JoinDaoBloc, JoinDaoState>(
                      builder: (context, state) {
                        return HyphaAppButton(
                          title: 'Yes',
                          isLoading: state.isButtonLoading,
                          onPressed: () {
                            context.read<JoinDaoBloc>().add(const JoinDaoEvent.onYesTapped());
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    HyphaAppButton(
                      title: 'Cancel',
                      buttonType: ButtonType.secondary,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
            ),
            failure: (context) => DecoratedBox(
              decoration: BoxDecoration(
                gradient: context.isDarkTheme ? HyphaColors.gradientBlack : HyphaColors.gradientWhite,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 24),
                    Text('Error loading dao data. Please try again later', style: context.textTheme.titleSmall),
                    const SizedBox(height: 24),
                    HyphaAppButton(
                      title: 'Close',
                      isLoading: state.isButtonLoading,
                      onPressed: () {
                        context.read<JoinDaoBloc>().add(const JoinDaoEvent.onYesTapped());
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
