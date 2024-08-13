part of 'locator.dart';

void _initDataSource() {
  locator.registerLazySingleton<PaymentRemoteDataSource>(
    PaymentRemoteDataSourceImpl.new,
  );
}
