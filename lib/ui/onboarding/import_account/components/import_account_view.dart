import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/secret_phrase/hypha_secret_phrase.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';

class ImportAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImportAccountBloc, ImportAccountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Import Account')),
          bottomNavigationBar: HyphaAppButton(
            onPressed: state.areAllWordsEntered
                ? () {
                    context.read<ImportAccountBloc>().add(ImportAccountEvent.onActionButtonTapped());
                  }
                : null,
            title: 'Find Account',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Use 12 words to import account'),
                  SizedBox(height: 16),
                  HyphaSecretPhrase(
                    words: state.userEnteredWords,
                    onSelected: (value) {
                      context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(value.value, value.key));
                    },
                    onChanged: (value) {
                      context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(value.value, value.key));
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<ImportAccountBloc>().add(ImportAccountEvent.onUserPastedWords());
                    },
                    child: Text('Paste Words'),
                  ),
                  if (state.userEnteredWords.isEmpty) ...[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle2,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Tap Here',
                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blueAccent),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.read<ImportAccountBloc>().add(ImportAccountEvent.onImportTypeChangeTapped());
                              },
                          ),
                          const TextSpan(text: ' '),
                          TextSpan(text: 'to import using your Private Key.'),
                        ],
                      ),
                    ),
                  ],
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
