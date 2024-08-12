import 'package:ivory_pay_test_task/bootstrap.dart';
import 'package:ivory_pay_test_task/src/app/page/app.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';

void main() {
  bootstrap(
    builder: App.new,
    environment: Environment.development,
  );
}
