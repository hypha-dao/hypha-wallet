import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/mnemonic_code/words_list.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';

const _numberOfWords = 12;
const _numberOfColumns = 3;

class ImportAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImportAccountBloc, ImportAccountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Import Account')),
          bottomNavigationBar: ElevatedButton(
            onPressed: state.areAllWordsEntered ? () {} : null,
            child: Text('Find Account'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Use 12 words to import account'),
                  SizedBox(height: 16),
                  GridView.count(
                    padding: const EdgeInsets.only(top: 16),
                    // to disable GridView's scrolling
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: _numberOfColumns,
                    childAspectRatio: _numberOfColumns / 2,
                    children: List.generate(
                      _numberOfWords,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: (index % _numberOfColumns == 0) ? 0 : 8,
                              right: ((index + 1) % _numberOfColumns == 0) ? 0 : 8),
                          child: Autocomplete<String>(
                            fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                              textEditingController.text = state.userEnteredWords[index] ?? '';
                              textEditingController.selection = TextSelection.fromPosition(
                                TextPosition(offset: textEditingController.text.length),
                              );
                              return TextField(
                                controller: textEditingController,
                                focusNode: focusNode,
                                autocorrect: false,
                                enableSuggestions: false,
                                enabled: true,
                                textInputAction: index < 11 ? TextInputAction.next : TextInputAction.done,
                                onChanged: (value) {
                                  context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(value, index));
                                },
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: (index + 1).toString(),
                                  border: const OutlineInputBorder(),
                                ),
                              );
                            },
                            optionsBuilder: (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return wordList.where((String option) {
                                return option.startsWith(textEditingValue.text.toLowerCase());
                              });
                            },
                            onSelected: (String selection) {
                              FocusScope.of(context).nextFocus();
                              context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(selection, index));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
