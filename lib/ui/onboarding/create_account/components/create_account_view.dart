import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/onboarding_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/edit_account_page.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class CreateAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return HyphaPageBackground(
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: OnboardingAppbar(title: 'Create your', subTitle: 'Hypha Account'),
            bottomNavigationBar: SafeArea(
              child: HyphaAppButton(
                margin: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
                onPressed: () {
                  context.read<CreateAccountBloc>().add(CreateAccountEvent.onNextTapped());
                },
                title: 'Next',
              ),
            ),
            body: HyphaBodyWidget(
              success: (context) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 34, name: state.userName),
                    SizedBox(height: 14),
                    Text(state.userName, style: context.hyphaTextTheme.smallTitles),
                    SizedBox(height: 70),
                    GestureDetector(
                      onTap: () {
                        _navigate(state);
                      },
                      child: TextFormField(
                        autofocus: false,
                        enabled: false,
                        onTap: () {
                          _navigate(state);
                        },
                        initialValue: state.userAccount,
                        decoration: InputDecoration(
                          labelText: 'BlockChain Account',
                          labelStyle: context.textTheme.labelLarge?.copyWith(color: HyphaColors.primaryBlu),
                          disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.primaryBlu)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.primaryBlu)),
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

  void _navigate(CreateAccountState state) {
    Get.Get.to(
      () => EditAccountPage(PageParams(
        file: state.image,
        name: state.userName,
      )),
      transition: Get.Transition.rightToLeft,
    );
  }
}
