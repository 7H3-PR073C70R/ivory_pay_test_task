import 'package:flutter/material.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_spacing.dart';
import 'package:ivory_pay_test_task/src/core/extensions/num_extension.dart';

extension BottomSheetExtension on BuildContext {
  void showCustomBottomModalSheet({
    required Widget child,
    bool isScrollControlled = false,
  }) {
    showModalBottomSheet<dynamic>(
      backgroundColor: Colors.transparent,
      context: this,
      isScrollControlled: isScrollControlled,
      constraints: BoxConstraints(
        maxHeight: AppSpacing.screenHeight(this) * .9,
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 4.height,
              width: 46.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.kcWhite,
              ),
            ),
            AppSpacing.setVerticalSpace(12),
            Expanded(child: child),
          ],
        );
      },
    );
  }
}
