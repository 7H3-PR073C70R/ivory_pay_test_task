import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/core/utils/use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';

class GetTransactionInfoUseCase implements UseCase<POSModel, String> {
  const GetTransactionInfoUseCase(this._repository);
  final PaymentRepository _repository;
  @override
  Future<Either<Failure, POSModel>> call(String params) {
    return _repository.getTransactionInfo(params);
  }
}
