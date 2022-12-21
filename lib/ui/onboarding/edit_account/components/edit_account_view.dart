import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class EditAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditAccountBloc, EditAccountState>(
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
                  Text('Edit Account'),
                  HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 30),
                  TextFormField(initialValue: state.userAccount),
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
