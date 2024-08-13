import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory_pay_test_task/src/app/router/app_router.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/core/extensions/router_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/snackbar_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/theme_extension.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/qr_code_cubit/qr_code_cubit.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/widgets/qr_code_scanner.dart';

@RoutePage()
class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  static const routeName = '/scanner';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QrCodeCubit(),
      child: BlocListener<QrCodeCubit, QrCodeState>(
        listener: (context, state) {
          if (state.viewState.isError) {
            context.showSnackBar(
              message: 'Invalid QR Code Scanned',
              type: SnackBarType.error,
            );
          } else if (state.viewState.isSuccess) {
            context.navigator.push(
              PaymentInfoRoute(
                model: state.barCodeDetail!,
              ),
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              const QRCodeScanner(),
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Scan QR Code',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: AppColors.kcWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
