part of 'locator.dart';

Future<void> _initRepositoryLocator() async {
  locator.registerLazySingleton<PaymentRepository>(
    () => PaymentRepositoryImpl(locator()),
  );
}
