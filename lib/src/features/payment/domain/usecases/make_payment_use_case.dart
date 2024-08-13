import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/core/utils/use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';

class MakePaymentUseCase implements UseCase<ReceiptModel, String> {
  const MakePaymentUseCase(this._repository);
  final PaymentRepository _repository;
  @override
  Future<Either<Failure, ReceiptModel>> call(String params) {
    return _repository.makePayment(params);
  }
}
