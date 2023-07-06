import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';

class TextRequestBottomSheet extends StatefulWidget {
  final String title;
  final String? initialText;
  final Function(String? text) onPressed;

  const TextRequestBottomSheet({super.key, required this.title, required this.onPressed, this.initialText});

  @override
  State<TextRequestBottomSheet> createState() => _TextRequestBottomSheetState();
}

class _TextRequestBottomSheetState extends State<TextRequestBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  bool showUpdateBioLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller.text = widget.initialText ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back(result: null);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: widget.title,
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              maxLines: 5,
              autofocus: true,
              controller: _controller,
            ),
            const SizedBox(height: 50),
            HyphaAppButton(
              title: 'submit',
              isLoading: showUpdateBioLoading,
              onPressed: () {
                setState(() {
                  showUpdateBioLoading = true;
                });
                widget.onPressed(_controller.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
