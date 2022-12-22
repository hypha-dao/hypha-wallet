import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/requirement_state_widget.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class EditAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditAccountBloc, EditAccountState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: ElevatedButton(
            onPressed: () {},
            child: Text('Next'),
          ),
          body: HyphaBodyWidget(
            success: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Edit Account'),
                  HyphaAvatarImage(imageFromFile: state.image?.path, imageRadius: 30),
                  SizedBox(height: 16),
                  TextFormField(
                      maxLength: 12,
                      initialValue: state.userAccount,
                      onChanged: (value) {
                        context.read<EditAccountBloc>().add(EditAccountEvent.onAccountChange(value));
                      }),
                  SizedBox(height: 16),
                  ...state.userAccountRequirements.map((e) => Row(
                        children: [
                          RequirementStateWidget(state: e.state),
                          SizedBox(width: 16),
                          Text(e.error.message),
                        ],
                      ))
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
