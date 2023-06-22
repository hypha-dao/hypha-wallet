import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/send/interactor/send_bloc.dart';

class SendView extends StatelessWidget {
  const SendView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: BlocBuilder<SendBloc, SendState>(
            builder: (context, state) {
              return Text('Send ${state.tokenData.name}');
            },
          )),
          body: Column(
            children: [
              TextFormField(),
              _AvailableBalanceWidget(),
              _ToUserRow(),
              _MemoField(),
              _PercentagesWidget(),
            ],
          )),
    );
  }
}

class _PercentagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        decoration('min'),
        decoration('25%'),
        decoration('50%'),
        decoration('75%'),
        decoration('max'),
      ],
    );
  }

  Widget decoration(String text) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(
            color: HyphaColors.primaryBlu,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Text(text),
    );
  }
}

class _MemoField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('Memo TODO');
  }
}

class _ToUserRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      builder: (context, state) {
        return ListTile(
          leading: HyphaAvatarImage(
            imageRadius: 20,
            name: state.receiverUser.userName,
            imageFromUrl: state.receiverUser.userImage,
          ),
          title: Text(state.receiverUser.userName ?? state.receiverUser.accountName),
          subtitle: Text(state.receiverUser.accountName),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HyphaColors.lightBlack,
            ),
            child: const Text('To'),
          ),
        );
      },
    );
  }
}

class _AvailableBalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      builder: (context, state) {
        return const Column(
          children: [Text('Available Balance'), Text('10')],
        );
      },
    );
  }
}
