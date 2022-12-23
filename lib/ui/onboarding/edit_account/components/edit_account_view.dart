import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/components/requirement_state_widget.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class EditAccountView extends StatefulWidget {
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
        _onSearchChanged(String value) {
          if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce = Timer(const Duration(milliseconds: 500), () {
            context.read<EditAccountBloc>().add(EditAccountEvent.onAccountChange(value));
          });
        }

        return Scaffold(
          bottomNavigationBar: ElevatedButton(
            onPressed: state.isNextButtonAvailable
                ? () {
                    context.read<EditAccountBloc>().add(EditAccountEvent.onNextPressed());
                  }
                : null,
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
                  TextFormField(maxLength: 12, initialValue: state.userAccount, onChanged: _onSearchChanged),
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
