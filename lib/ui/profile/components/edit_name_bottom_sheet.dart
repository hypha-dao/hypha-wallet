import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';

class EditNameBottomSheet extends StatefulWidget {
  final ProfileBloc profileBloc;

  const EditNameBottomSheet({super.key, required this.profileBloc});

  @override
  State<EditNameBottomSheet> createState() => _EditNameBottomSheetState();
}

class _EditNameBottomSheetState extends State<EditNameBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  bool showUpdateLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller.text = widget.profileBloc.state.profileData?.name ?? '';
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
              'Enter Name',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              maxLines: 5,
              autofocus: true,
              controller: _controller,
            ),
            const SizedBox(height: 50),
            HyphaAppButton(
              title: 'submit',
              isLoading: showUpdateLoading,
              onPressed: () {
                setState(() {
                  showUpdateLoading = true;
                });
                widget.profileBloc.add(ProfileEvent.setName(_controller.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}
