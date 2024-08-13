part of 'locator.dart';

Future<void> _initUseCaseLocator() async {
  locator
    ..registerLazySingleton<GetTransactionInfoUseCase>(
      () => GetTransactionInfoUseCase(locator()),
    )
    ..registerLazySingleton<MakePaymentUseCase>(
      () => MakePaymentUseCase(locator()),
    );
}
