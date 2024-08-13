part of 'locator.dart';

void _initServices() {
  locator
    ..registerLazySingleton<UserStorageService>(
      () => UserStorageServiceImpl(locator()),
    )
    ..registerLazySingleton<PermissionService>(
      PermissionServiceImpl.new,
    )
    ..registerLazySingleton<BluetoothPrinterService>(
      () => BluetoothPrinterServiceImpl(
        BlueThermalPrinter.instance,
        locator(),
      ),
    )
    ..registerLazySingleton<LocalStorageService>(
      LocalStorageServiceImpl.new,
    );
}
