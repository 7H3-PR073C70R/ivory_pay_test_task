import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';

abstract class PaymentRepository {
  Future<Either<Failure, POSModel>> getTransactionInfo(String id);
  Future<Either<Failure, ReceiptModel>> makePayment(String id);
}
