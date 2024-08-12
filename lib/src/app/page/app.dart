import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ivory_pay_test_task/src/app/router/app_router.dart';
import 'package:ivory_pay_test_task/src/core/themes/app_theme.dart';
import 'package:ivory_pay_test_task/src/l10n/l10n.dart';
import 'package:ivory_pay_test_task/src/shared/widgets/dismiss_keyboard.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) => MaterialApp.router(
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: appRouter.config(),
        ),
      ),
    );
  }
}
