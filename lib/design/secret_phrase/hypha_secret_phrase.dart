import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/mnemonic_code/words_list.dart';

const _numberOfWords = 12;
const _numberOfColumns = 3;

class HyphaSecretPhrase extends StatelessWidget {
  final Map<int, String> words;
  final AutocompleteOnSelected<MapEntry<int, String>>? onSelected;
  final ValueChanged<MapEntry<int, String>>? onChanged;

  const HyphaSecretPhrase({
    super.key,
    required this.words,
    this.onSelected,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
              right: ((index + 1) % _numberOfColumns == 0) ? 0 : 8,
            ),
            child: Autocomplete<String>(
              fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                textEditingController.text = words[index] ?? '';
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
                    onChanged?.call(MapEntry(index, value));
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
              onSelected: (value) => onSelected?.call(MapEntry(index, value)),
            ),
          );
        },
      ),
    );
  }
}
