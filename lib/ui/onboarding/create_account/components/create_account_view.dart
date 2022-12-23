import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/edit_account_page.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class CreateAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Text('Next')),
          // bottomNavigationBar: ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Next'),
          // ),
          body: HyphaBodyWidget(
            success: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create Account'),
                  HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 30),
                  TextFormField(initialValue: state.userAccount),
                  Text('More info'),
                  TextButton(
                      onPressed: () {
                        Get.Get.to(
                          () => EditAccountPage(state.image, state.userName),
                          transition: Get.Transition.rightToLeft,
                        );
                      },
                      child: Text('Edit blockchain account')),
                ],
              ),
            ),
            pageState: state.pageState,
          ),
        );
      },
    );
  }
}
