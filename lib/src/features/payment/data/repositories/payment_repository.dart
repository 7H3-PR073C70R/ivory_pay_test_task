import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/extensions/repository_extension.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._paymentRemoteDataSource);
  final PaymentRemoteDataSource _paymentRemoteDataSource;
  @override
  Future<Either<Failure, POSModel>> getTransactionInfo(String id) {
    return _paymentRemoteDataSource.getTransactionInfo(id).makeRequest();
  }

  @override
  Future<Either<Failure, ReceiptModel>> makePayment(String id) {
    return _paymentRemoteDataSource.makePayment(id).makeRequest();
  }
}
