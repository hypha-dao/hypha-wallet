import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/search_user/components/search_result_row.dart';
import 'package:hypha_wallet/ui/search_user/components/search_user_text_field.dart';
import 'package:hypha_wallet/ui/search_user/interactor/search_user_bloc.dart';

class SearchUserView extends StatelessWidget {
  const SearchUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withOpacity: false,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16, left: 16, top: 10),
            child: SearchUserTextField(),
          ),
          if ('title' != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text('Gery Title', style: context.textTheme.labelLarge),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 16),
          BlocBuilder<SearchUserBloc, SearchUserState>(
            builder: (_, state) {
              switch (state.pageState) {
                case PageState.loading:
                case PageState.failure:
                case PageState.success:
                  if (state.pageState == PageState.success && state.users.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
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

                            },
                          );
                        },
                      ),
                    );
                  }
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      )
    );
  }
}
