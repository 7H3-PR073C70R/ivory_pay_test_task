// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/bar_code_details/bar_code_details.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/pages/payment_info_page.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/pages/scanner_page.dart';
import 'package:ivory_pay_test_task/src/shared/wrappers/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ScannerRoute.page,
          path: ScannerPage.routeName,
          initial: true,
        ),
        AutoRoute(
          page: PaymentInfoRoute.page,
          path: PaymentInfoPage.routeName,
        ),
      ];
}
