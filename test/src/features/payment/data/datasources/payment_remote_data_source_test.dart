import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';

void main() {
  late PaymentRemoteDataSource dataSource;

  setUp(() {
    dataSource = PaymentRemoteDataSourceImpl();
  });

  group('PaymentRemoteDataSourceImpl', () {
    test('getTransactionInfo should return a POSModel', () async {
      // Arrange
      const transactionId = 'txn67890';

      // Act
      final result = await dataSource.getTransactionInfo(transactionId);

      // Assert
      expect(result, isA<POSModel>());
      expect(result.transaction?.transactionId, equals(transactionId));
      expect(result.customer?.name, equals('John Doe'));
      expect(result.cryptoDetails?.currency, equals('Bitcoin'));
    });

    test('makePayment should return a ReceiptModel', () async {
      // Arrange
      const transactionId = 'txn67890';

      // Act
      final result = await dataSource.makePayment(transactionId);

      // Assert
      expect(result, isA<ReceiptModel>());
      expect(result.receiptId, equals(transactionId));
      expect(result.cryptoCurrency, equals('Bitcoin'));
      expect(result.paymentStatus, equals('completed'));
    });
  });
}
