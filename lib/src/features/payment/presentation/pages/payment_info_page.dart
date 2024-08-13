// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_spacing.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/core/extensions/bottom_sheet_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/num_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/snackbar_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/theme_extension.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/bar_code_details/bar_code_details.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/payment/payment_cubit.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/widgets/payment_successful_modal.dart';
import 'package:ivory_pay_test_task/src/shared/widgets/app_button.dart';

@RoutePage()
class PaymentInfoPage extends HookWidget {
  const PaymentInfoPage({
    required this.model,
    super.key,
  });

  final BarCodeDetail model;

  static const routeName = '/payment-info';

  @override
  Widget build(BuildContext context) {
    final paymentCubit = useMemoized(
      PaymentCubit.new,
    );
    return BlocProvider(
      create: (context) => paymentCubit
        ..getTransactionInfo(
          model.transactionId,
        ),
      child: BlocBuilder<PaymentCubit, PaymentState>(
        buildWhen: (previous, current) {
          if (current.viewState.isError ||
              current.makePaymentState.isError ||
              current.printingState.isError) {
            context.showSnackBar(
              message: current.errorMessage ?? 'Something went wrong',
              type: SnackBarType.error,
            );
          }
          if (current.makePaymentState.isSuccess &&
              current.receiptModel != null) {
            context.showCustomBottomModalSheet(
              child: BlocProvider.value(
                value: paymentCubit,
                child: const PaymentSuccessfulModal(),
              ),
            );
          }
          return true;
        },
        builder: (context, state) {
          if (state.viewState.isProcessing) {
            return Center(
              child: Platform.isAndroid
                  ? const CircularProgressIndicator(
                      backgroundColor: AppColors.kcAccent,
                    )
                  : Transform.scale(
                      scale: 2.radius,
                      child: const CircularProgressIndicator.adaptive(
                        backgroundColor: AppColors.kcAccent,
                      ),
                    ),
            );
          } else if (state.viewState.isError) {
            return Center(
              child: Text(
                state.errorMessage ?? 'Something went wrong',
              ),
            );
          }
          final cryptoDetails = state.posModel!.cryptoDetails;
          final customer = state.posModel!.customer;
          final transaction = state.posModel!.transaction;
          final items = transaction?.items ?? [];
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Payment Summary',
                      style: context.textTheme.displayLarge?.copyWith(),
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.horizontalSpacing,
                      ),
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: const <int, TableColumnWidth>{
                          0: IntrinsicColumnWidth(),
                          1: FlexColumnWidth(),
                        },
                        children: [
                          // Header
                          const TableRow(
                            children: [
                              Text(
                                'Crypto Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(''),
                            ],
                          ),
                          // Crypto Details
                          if (cryptoDetails != null) ...[
                            TableRow(
                              children: [
                                const Text(' Crypto Currency:'),
                                Text(' ${cryptoDetails.currency ?? ''}'),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Network:'),
                                Text(' ${cryptoDetails.network ?? ''}'),
                              ],
                            ),
                            const TableRow(
                              children: [
                                SizedBox(height: 16), // Add some space
                                SizedBox(height: 16),
                              ],
                            ),
                          ],
                          // Customer Details
                          if (customer != null) ...[
                            const TableRow(
                              children: [
                                Text(
                                  'Customer Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(''),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Name:'),
                                Text(' ${customer.name ?? ''}'),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Wallet Address:'),
                                Text(' ${customer.cryptoWalletAddress ?? ''}'),
                              ],
                            ),
                            const TableRow(
                              children: [
                                SizedBox(height: 16), // Add some space
                                SizedBox(height: 16),
                              ],
                            ),
                          ],
                          // Transaction Details
                          if (transaction != null) ...[
                            const TableRow(
                              children: [
                                Text(
                                  'Transaction Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(''),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Transaction ID:'),
                                Text(' ${transaction.transactionId ?? ''}'),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Date & Time:'),
                                Text(
                                  ' ${DateFormat('dd MMM, yyyy. hh:mma').format(transaction.dateTime ?? DateTime.now())}',
                                ),
                              ],
                            ),
                            // Items Header
                            const TableRow(
                              children: [
                                Text(
                                  'Items:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(''),
                              ],
                            ),
                            for (final item in items)
                              TableRow(
                                children: [
                                  Text(
                                    ' ${item.quantity}x ${item.description}',
                                  ),
                                  Text(
                                    ' \$${item.totalPrice?.toStringAsFixed(2) ?? ''}',
                                  ),
                                ],
                              ),
                            TableRow(
                              children: [
                                const Text(' Total Amount:'),
                                Text(
                                  ' \$${transaction.totalAmount?.toStringAsFixed(2) ?? ''}',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Payment Method:'),
                                Text(' ${transaction.paymentMethod ?? ''}'),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(' Payment Status:'),
                                Text(' ${transaction.paymentStatus ?? ''}'),
                              ],
                            ),
                            if (transaction.cryptoWallet != null) ...[
                              TableRow(
                                children: [
                                  const Text('Transaction Hash:'),
                                  Text(
                                    transaction.cryptoWallet?.transactionHash ??
                                        '',
                                  ),
                                ],
                              ),
                            ],
                          ],
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.horizontalSpacing,
                    ),
                    child: AppButton(
                      isBusy: state.makePaymentState.isProcessing,
                      text: 'Make Payment',
                      onPressed: () => context.read<PaymentCubit>().makePayment(
                            model.transactionId,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
