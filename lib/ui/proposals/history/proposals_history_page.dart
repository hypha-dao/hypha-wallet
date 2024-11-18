import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/ui/proposals/history/components/proposals_history_view.dart';
import 'package:hypha_wallet/ui/proposals/history/interactor/proposals_history_bloc.dart';

class ProposalsHistoryPage extends StatelessWidget {
  final DaoData _dao;

  const ProposalsHistoryPage(this._dao, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProposalsHistoryBloc>(param1: _dao)
        ..add(const ProposalsHistoryEvent.initial()),
      child: const ProposalsHistoryView(),
    );
  }
}
