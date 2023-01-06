import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/edit_account_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class CreateAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return OnboardingPageBackground(
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: OnboardingAppbar(),
            bottomNavigationBar: SafeArea(
              child: HyphaAppButton(
                margin: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
                onPressed: () {},
                title: 'Next',
              ),
            ),
            body: HyphaBodyWidget(
              success: (context) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 28),
                    SizedBox(height: 14),
                    Text(state.userName, style: context.hyphaTextTheme.smallTitles),
                    SizedBox(height: 70),
                    GestureDetector(
                      onTap: () {
                        Get.Get.to(
                          () => EditAccountPage(state.image, state.userName),
                          transition: Get.Transition.rightToLeft,
                        );
                      },
                      child: TextFormField(
                        autofocus: false,
                        enabled: false,
                        onTap: () {
                          Get.Get.to(
                            () => EditAccountPage(state.image, state.userName),
                            transition: Get.Transition.rightToLeft,
                          );
                        },
                        initialValue: state.userAccount,
                        decoration: InputDecoration(
                          labelText: 'BlockChain Account',
                          labelStyle: context.textTheme.labelLarge?.copyWith(color: HyphaColors.primaryBlu),
                          disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.lightBlue)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.lightBlue)),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'We created a blockchain account for you. You are ready to finalise by clicking the next button. Tap in the field to create a different one',
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              pageState: state.pageState,
            ),
          ),
        );
      },
    );
  }
}
