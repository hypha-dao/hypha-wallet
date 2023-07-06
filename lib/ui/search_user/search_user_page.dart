import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/token_model.dart';
import 'package:hypha_wallet/ui/search_user/components/search_user_view.dart';
import 'package:hypha_wallet/ui/search_user/interactor/search_user_bloc.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class SearchUserPage extends StatelessWidget {
  final String pageTitle;
  final WalletTokenData tokenModel;

  const SearchUserPage({super.key, required this.pageTitle, required this.tokenModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<SearchUserBloc>()..add(const SearchUserEvent.initial()),
      child: BlocListener<SearchUserBloc, SearchUserState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          context.read<SearchUserBloc>().add(const SearchUserEvent.clearPageCommand());
        },
        child: SearchUserView(pageTitle, tokenModel: tokenModel),
      ),
    );
  }
}
