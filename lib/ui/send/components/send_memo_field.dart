import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/send/interactor/send_bloc.dart';
import 'package:hypha_wallet/ui/shared/components/text_request_bottom_sheet.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

class SendMemoField extends StatelessWidget {
  const SendMemoField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      buildWhen: (previous, current) => previous.memo != current.memo,
      builder: (context, state) {
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
                    initialText: state.memo ?? '',
                    onPressed: (String? text) {
                      context.read<SendBloc>().add(SendEvent.onMemoEntered(text));
                      Get.back();
                    }),
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
                      state.memo ?? 'Memo (optional)',
                      style: context.hyphaTextTheme.regular
                          .copyWith(color: state.memo == null ? HyphaColors.midGrey : null),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  state.memo == null ? const SizedBox.shrink() : const Icon(Icons.edit)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}