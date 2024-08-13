import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_env.dart';
import 'package:ivory_pay_test_task/src/core/networking/interceptors/dio_interceptors.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/repositories/payment_repository.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/get_transaction_info_use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/make_payment_use_case.dart';
import 'package:ivory_pay_test_task/src/services/bluetooth_printer_service.dart';
import 'package:ivory_pay_test_task/src/services/local_storage_service.dart';
import 'package:ivory_pay_test_task/src/services/permission_service.dart';
import 'package:ivory_pay_test_task/src/services/user_storage_service.dart';
import 'package:logger/logger.dart';

part 'client_locator.dart';
part 'data_source_locator.dart';
part 'external_locator.dart';
part 'repository_locator.dart';
part 'service_locator.dart';
part 'use_case_locator.dart';

final locator = GetIt.instance;

void initLocator() {
  _initExternal();
  _initClients();
  _initDataSource();
  _initRepositoryLocator();
  _initUseCaseLocator();
  _initServices();
}
