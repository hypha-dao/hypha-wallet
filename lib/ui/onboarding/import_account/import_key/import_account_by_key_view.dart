import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';

class ImportAccountByKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImportAccountBloc, ImportAccountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Import Account')),
          bottomNavigationBar: ElevatedButton(
            onPressed: state.areAllWordsEntered
                ? () {
                    context.read<ImportAccountBloc>().add(ImportAccountEvent.onActionButtonTapped());
                  }
                : null,
            child: Text('Find Account'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Use private key to import account'),
                  SizedBox(height: 16),
                  TextField(
                      decoration: InputDecoration(label: Text('Private Key')),
                      onChanged: (value) {
                        context.read<ImportAccountBloc>().add(ImportAccountEvent.onPrivateKeyChanged(value));
                      }),
                  ListView(
                    shrinkWrap: true,
                    children: state.accounts
                        .map(
                          (e) => ListTile(
                            title: Text(e.userName),
                            subtitle: Text(e.accountName),
                            onTap: () {
                              context.read<ImportAccountBloc>().add(ImportAccountEvent.onAccountSelected(e));
                            },
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
