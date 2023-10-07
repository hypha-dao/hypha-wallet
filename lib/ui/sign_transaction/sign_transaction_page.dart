import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/ui/sign_transaction/components/sign_transaction_view.dart';
import 'package:hypha_wallet/ui/sign_transaction/failed/sign_transaction_failed_page.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/sign_transaction_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/success/sign_transaction_success_page.dart';

class SignTransactionPage extends StatelessWidget {
  final ScanQrCodeResultData qrCodeData;

  const SignTransactionPage({super.key, required this.qrCodeData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<SignTransactionBloc>(param1: qrCodeData)..add(const SignTransactionEvent.initial()),
      child: BlocListener<SignTransactionBloc, SignTransactionState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateToTransactionSuccess: (type) {
            GetX.Get.off(
              () => SignTransactionSuccessPage(transactionType: type),
              transition: GetX.Transition.downToUp,
            );
          }, navigateToTransactionFailed: (error) {
            GetX.Get.off(() => SignTransactionFailedPage(error.error), transition: GetX.Transition.downToUp);
          }, navigateAway: () {
            GetX.Get.back();
          });

          context.read<SignTransactionBloc>().add(const SignTransactionEvent.clearPageCommand());
        },
        child: const SignTransactionView(),
      ),
    );
  }
}
