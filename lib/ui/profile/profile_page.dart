import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/profile/components/profile_view.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProfileBloc>()..add(const ProfileEvent.initial()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.whenOrNull(navigateBack: () {
            Get.back();
          });
          context.read<ProfileBloc>().add(const ProfileEvent.clearPageCommand());
        },
        child: const ProfileView(),
      ),
    );
  }
}
