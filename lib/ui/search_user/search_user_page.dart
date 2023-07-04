import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/search_user/interactor/search_user_bloc.dart';
import 'package:hypha_wallet/ui/send/components/send_view.dart';

class SearchUserPage extends StatelessWidget {
  final UserProfileData receiverUser;

  const SearchUserPage({super.key, required this.receiverUser});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<SearchUserBloc>(param1: receiverUser)..add(const SearchUserEvent.initial()),
      child: BlocListener<SearchUserBloc, SearchUserState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          context.read<SearchUserBloc>().add(const SearchUserEvent.clearPageCommand());
        },
        child: const SendView(),
      ),
    );
  }
}
