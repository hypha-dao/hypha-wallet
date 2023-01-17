import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/seeds_esr.dart';

class ScanQrCodeResultData {
  final EOSTransaction transaction;
  final SeedsESR esr;

  ScanQrCodeResultData({required this.transaction, required this.esr});
}
