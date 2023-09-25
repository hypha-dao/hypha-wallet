import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/transfer_tokens/components/keypad_key.dart';

class NumberKeyboardGrid extends StatelessWidget {
  final ValueChanged<KeypadKey> onKeyTapped;
  const NumberKeyboardGrid({super.key, required this.onKeyTapped});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 1.8,
        physics: const NeverScrollableScrollPhysics(),
        children: KeypadKey.values.mapIndexed((index, element) {
          final text = switch (element) {
            KeypadKey.dot => '.',
            KeypadKey.delete => '<-',
            _ => element.value.toString(),
          };
          return GestureDetector(
            onTap: (){
              onKeyTapped(element);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: index % 3 == 0 ? 0 : 8, right: index % 3 == 2 ? 0 : 8),
              child: HyphaCard(
                borderRadius: BorderRadius.circular(14),
                child: Center(
                  child: Text(
                    text,
                    style: context.hyphaTextTheme.mediumTitles,
                  ),
                ),
              ),
            ),
          );
        }).toList());
  }
}