import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/search_user/components/search_result_row.dart';
import 'package:hypha_wallet/ui/search_user/components/search_user_text_field.dart';
import 'package:hypha_wallet/ui/search_user/interactor/search_user_bloc.dart';
import 'package:hypha_wallet/ui/send/send_page.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class SearchUserView extends StatelessWidget {
  final String pageTitle;
  final WalletTokenData tokenModel;

  const SearchUserView(this.pageTitle, {super.key, required this.tokenModel});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
        withOpacity: false,
        withGradient: true,
        child: Scaffold(
          appBar: AppBar(title: Text(pageTitle)),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 24, left: 24, top: 10),
                child: SearchUserTextField(),
              ),
              const SizedBox(height: 16),
              BlocBuilder<SearchUserBloc, SearchUserState>(
                builder: (_, state) {
                  if (state.pageState == PageState.success && state.users.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: Text('No Users Found')),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.users.length,
                        itemBuilder: (_, index) {
                          final UserProfileData user = state.users[index];
                          return SearchResultRow(
                            key: Key(user.accountName),
                            member: user,
                            onTap: () {
                              Get.to(() => SendPage(receiverUser: user, tokenData: tokenModel));
                            },
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ));
  }
}
