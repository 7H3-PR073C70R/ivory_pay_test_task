// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [PaymentInfoPage]
class PaymentInfoRoute extends PageRouteInfo<PaymentInfoRouteArgs> {
  PaymentInfoRoute({
    required BarCodeDetail model,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentInfoRoute.name,
          args: PaymentInfoRouteArgs(
            model: model,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentInfoRouteArgs>();
      return PaymentInfoPage(
        model: args.model,
        key: args.key,
      );
    },
  );
}

class PaymentInfoRouteArgs {
  const PaymentInfoRouteArgs({
    required this.model,
    this.key,
  });

  final BarCodeDetail model;

  final Key? key;

  @override
  String toString() {
    return 'PaymentInfoRouteArgs{model: $model, key: $key}';
  }
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
      : super(
          ScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ScannerPage();
    },
  );
}
