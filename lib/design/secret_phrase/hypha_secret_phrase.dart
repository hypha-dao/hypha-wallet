import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/mnemonic_code/words_list.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

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
                    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: Text(
                      (index + 1).toString(),
                      style: context.hyphaTextTheme.ralMediumLabel.copyWith(
                        color: HyphaColors.offWhite,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: HyphaColors.lightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: HyphaColors.primaryBlu),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                );
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return wordList.where((String option) {
                  return option.startsWith(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (value) {
                FocusScope.of(context).nextFocus();
                onSelected?.call(MapEntry(index, value));
              },
            ),
          );
        },
      ),
    );
  }
}
