import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/shared/components/text_request_bottom_sheet.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

class MemoField extends StatelessWidget {
  final Function(String? text) onPressed;
  final String? memo;

  const MemoField({
    super.key,
    this.memo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          clipBehavior: Clip.hardEdge,
          context: context,
          builder: (modelContext) => FractionallySizedBox(
            heightFactor: UIConstants.bottomSheetHeightFraction,
            child: TextRequestBottomSheet(
              title: 'Enter Memo',
              initialText: memo ?? '',
              onPressed: onPressed,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        );
      },
      child: HyphaCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  memo ?? 'Memo (optional)',
                  style: context.hyphaTextTheme.regular.copyWith(color: memo == null ? HyphaColors.midGrey : null),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              memo == null ? const SizedBox.shrink() : const Icon(Icons.edit)
            ],
          ),
        ),
      ),
    );
  }
}
