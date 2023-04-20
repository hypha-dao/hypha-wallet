import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/requirement_state_widget.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class EditAccountView extends StatefulWidget {
  const EditAccountView({super.key});

  @override
  State<EditAccountView> createState() => _EditAccountViewState();
}

class _EditAccountViewState extends State<EditAccountView> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditAccountBloc, EditAccountState>(
      builder: (context, state) {
        void _onSearchChanged(String value) {
          if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce = Timer(const Duration(milliseconds: 500), () {
            context.read<EditAccountBloc>().add(EditAccountEvent.onAccountChange(value));
          });
        }

        return HyphaPageBackground(
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: const OnboardingAppbar(title: 'Create your', subTitle: 'Hypha Account'),
            bottomNavigationBar: HyphaSafeBottomNavigationBar(
              child: HyphaAppButton(
                isActive: state.isNextButtonAvailable,
                onPressed: state.isNextButtonAvailable
                    ? () {
                        context
                            .read<DeeplinkBloc>()
                            .state
                            .inviteLinkData
                            ?.let((it) => context.read<EditAccountBloc>().add(EditAccountEvent.onNextPressed(it)));
                      }
                    : null,
                title: 'Next',
              ),
            ),
            body: SingleChildScrollView(
              child: HyphaBodyWidget(
                success: (context) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 34, name: state.userName),
                      const SizedBox(height: 14),
                      Text(state.userName, style: context.hyphaTextTheme.smallTitles),
                      const SizedBox(height: 66),
                      TextFormField(
                        maxLength: 12,
                        autofocus: false,
                        onChanged: _onSearchChanged,
                        enabled: true,
                        initialValue: state.userAccount,
                        decoration: InputDecoration(
                          labelText: 'BlockChain Account',
                          labelStyle: context.textTheme.labelLarge?.copyWith(color: HyphaColors.primaryBlu),
                          disabledBorder:
                              const UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.lightBlue)),
                          enabledBorder:
                              const UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.lightBlue)),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ...state.userAccountRequirements.map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              children: [
                                RequirementStateWidget(state: e.state),
                                const SizedBox(width: 16),
                                Text(
                                  e.error.message,
                                  style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                pageState: state.pageState,
              ),
            ),
          ),
        );
      },
    );
  }
}
