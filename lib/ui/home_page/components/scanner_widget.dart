import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget();

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive
          ? null
          : () {
              setState(() {
                isActive = true;
              });
            },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: Get.height * .50,
          child: isActive
              ? MobileScanner(
                  allowDuplicates: false,
                  controller: MobileScannerController(
                    facing: CameraFacing.back,
                    torchEnabled: false,
                  ),
                  onDetect: (barcode, args) {
                    if (barcode.rawValue == null) {
                      LogHelper.d('Failed to scan Barcode');
                      context.read<ErrorHandlerBloc>().add(ErrorHandlerEvent.onError(HyphaError(
                            message: 'Failed to scan QR code',
                            type: HyphaErrorType.generic,
                          )));
                    } else {
                      final String code = barcode.rawValue!;
                      LogHelper.d('Barcode found! $code');
                      context.read<HomeBloc>().add(HomeEvent.onQRCodeScanned(code));
                    }
                  },
                )
              : Center(child: Text('Scan QR Code')),
        ),
      ),
    );
  }
}
