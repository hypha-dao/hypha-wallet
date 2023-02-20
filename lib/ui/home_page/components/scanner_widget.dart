import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error_type.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class ScannerWidget extends StatefulWidget {
  final bool isLoading;

  const ScannerWidget({super.key, required this.isLoading});

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  bool isActive = false;
  double _heightFactor = .30;
  double _blurFactor = 0.09;
  double _widthBlurFactor = 0.73;
  double sigma = 5;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive
          ? null
          : () async {
              final status = await Permission.camera.status;
              if (status.isDenied) {
                final result = await showPermissionSheet();

                if (result) {
                  showScanner();
                }
              } else {
                showScanner();
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage('assets/images/graphics/qr_back.png'), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(30),
            ),
            height: Get.height * _heightFactor,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              height: Get.height * (_heightFactor - _blurFactor),
              width: Get.width * _widthBlurFactor,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
                child: isActive
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: MobileScanner(
                                allowDuplicates: false,
                                controller: MobileScannerController(
                                  facing: CameraFacing.back,
                                  torchEnabled: false,
                                ),
                                onDetect: (barcode, args) {
                                  if (barcode.rawValue == null) {
                                    LogHelper.d('Failed to scan Barcode');
                                    context.read<ErrorHandlerBloc>().add(
                                          ErrorHandlerEvent.onError(
                                            HyphaError(
                                              message: 'Failed to scan QR code',
                                              type: HyphaErrorType.generic,
                                            ),
                                          ),
                                        );
                                  } else {
                                    final String code = barcode.rawValue!;
                                    LogHelper.d('Barcode found! $code');
                                    hideScanner();
                                    context.read<HomeBloc>().add(HomeEvent.onQRCodeScanned(code));
                                  }
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: IconButton(
                              onPressed: () {
                                hideScanner();
                              },
                              icon: const Icon(HyphaIcons.cancel_circled, size: 36, color: HyphaColors.primaryBlu),
                            ),
                          ),
                        ],
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.isLoading
                                ? const SizedBox(height: 60, width: 60, child: CircularProgressIndicator())
                                : const Icon(HyphaIcons.home_b, size: 80, color: HyphaColors.primaryBlu),
                            const SizedBox(height: 24),
                            Text(
                              widget.isLoading ? 'Loading Transaction' : 'Scan QR',
                              style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showScanner() {
    setState(() {
      isActive = true;
      _heightFactor = 0.40;
      _blurFactor = 0.0;
      _widthBlurFactor = 1;
      sigma = 0;
    });
  }

  void hideScanner() {
    setState(() {
      isActive = false;
      _heightFactor = 0.30;
      _blurFactor = 0.09;
      _widthBlurFactor = 0.73;
      sigma = 5;
    });
  }

  /// Request camera permission. Rationale
  Future showPermissionSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) => FractionallySizedBox(
        heightFactor: UIConstants.bottomSheetHeightFraction,
        child: HyphaConfirmationPage(
          title: 'Camera',
          subtitle: 'Hypha Wallet would like to access to the phone camera',
          rationale:
              'Hypha Wallet needs access to the camera in order to use the “Scan QR” function. You can remove this permission anytime, from your device general settings.',
          image: 'assets/images/signout.png',
          primaryButtonCallback: () {
            Get.back(result: true);
          },
          primaryButtonText: 'Continue',
          secondaryButtonText: 'CLOSE',
          secondaryButtonCallback: () {
            Get.back(result: false);
          },
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}
