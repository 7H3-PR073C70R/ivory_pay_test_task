import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_env.dart';
import 'package:ivory_pay_test_task/src/core/networking/interceptors/dio_interceptors.dart';
import 'package:ivory_pay_test_task/src/services/local_storage_service.dart';
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
