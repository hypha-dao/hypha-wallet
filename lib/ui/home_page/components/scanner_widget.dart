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
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerWidget extends StatefulWidget {
  final bool isLoading;

  const ScannerWidget({super.key, required this.isLoading});

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  bool isActive = false;
  double _heightFactor = .30;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive
          ? null
          : () {
              // context.read<HomeBloc>().add(HomeEvent.onQRCodeScanned('code'));
              // final transactionData = TransactionDetailsData(
              //     signingTitle: 'From hypha DAO on Telos',
              //     expirationTime: const Duration(seconds: 60),
              //     cards: [
              //       TransactionDetailsCardData(
              //           items: {'account_name': 'luigicarlini', 'login_code': '668888666888666'},
              //           primaryText: 'Login User',
              //           secondaryText: 'Eosio.login - loginuser')
              //     ]);
              // Get.to(TransactionDetailsPage(transactionDetailsData: transactionData));
              setState(() {
                isActive = true;
                _heightFactor = 0.40;
              });
            },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('assets/images/graphics/qr_back.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(30),
          ),
          height: Get.height * _heightFactor,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
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
                                setState(() {
                                  isActive = false;
                                  _heightFactor = 0.30;
                                });
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
                            setState(() {
                              isActive = false;
                              _heightFactor = 0.30;
                            });
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
                            : const Icon(Icons.qr_code_scanner, size: 80, color: HyphaColors.primaryBlu),
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
    );
  }
}
