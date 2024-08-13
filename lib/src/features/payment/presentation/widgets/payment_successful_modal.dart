import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_spacing.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/core/extensions/num_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/router_extension.dart';
import 'package:ivory_pay_test_task/src/core/extensions/theme_extension.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/payment/payment_cubit.dart';
import 'package:ivory_pay_test_task/src/gen/assets.gen.dart';
import 'package:ivory_pay_test_task/src/shared/widgets/app_button.dart';
import 'package:ivory_pay_test_task/src/shared/widgets/shrinkable_button.dart';

class PaymentSuccessfulModal extends StatelessWidget {
  const PaymentSuccessfulModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 16.height,
        horizontal: 20.width,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.radius),
        ),
        color: AppColors.kcWhite,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ShrinkableButton(
              onTap: context.navigator.maybePop,
              child: AppAssets.icons.close.svg(
                width: 32.radius,
                height: 32.radius,
              ),
            ),
          ),
          AppSpacing.verticalSpaceMedium,
          CircleAvatar(
            radius: 100.radius,
            backgroundColor: AppColors.kcSuccess.withOpacity(.5),
            child: Padding(
              padding: EdgeInsets.all(8.radius),
              child: CircleAvatar(
                radius: 100.radius,
                backgroundColor: AppColors.kcSuccess,
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: AppColors.kcWhite,
                    size: 52.radius,
                  ),
                ),
              ),
            ),
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            'Payment Successful',
            style: context.textTheme.displayLarge?.copyWith(
              color: AppColors.kcSuccess,
              fontSize: 22.fontSize,
            ),
          ),
          AppSpacing.verticalSpaceMedium,
          BlocSelector<PaymentCubit, PaymentState, ViewState>(
            selector: (state) {
              return state.printingState;
            },
            builder: (context, printingState) {
              return AppButton(
                isBusy: printingState.isProcessing,
                text: 'Print Receipt',
                onPressed: () => context.read<PaymentCubit>().printReceipt(),
              );
            },
          ),
          AppSpacing.verticalSpaceMedium,
        ],
      ),
    );
  }
}
