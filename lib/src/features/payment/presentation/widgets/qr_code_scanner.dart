import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/extensions/snackbar_extension.dart';
import 'package:ivory_pay_test_task/src/di/locator.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/qr_code_cubit/qr_code_cubit.dart';
import 'package:ivory_pay_test_task/src/l10n/l10n.dart';
import 'package:ivory_pay_test_task/src/services/permission_service.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({super.key});

  @override
  State<StatefulWidget> createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void initState() {
    locator<PermissionService>().requestCameraPermission();
    super.initState();
  }

  // In order to get hot reload to work we need to pause the camera if
  // the platform is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: AppColors.kcPrimary,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
        ),
        onPermissionSet: (ctrl, permissionSet) {
          if (!permissionSet) {
            context.showSnackBar(
              message: context.appStrings.permissionNotAccepted,
              type: SnackBarType.error,
            );
          }
        },
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((data) {
      debugPrint(data.code);
      context.read<QrCodeCubit>().updateQRModel(data.code);
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
