import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/repositories/payment_repository.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/sample_data.dart';

class MockPaymentRemoteDataSource extends Mock
    implements PaymentRemoteDataSource {}

void main() {
  late PaymentRepository repository;
  late MockPaymentRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockPaymentRemoteDataSource();
    repository = PaymentRepositoryImpl(mockRemoteDataSource);
  });

  group('PaymentRepositoryImpl', () {
    test('should return POSModel when getTransactionInfo is successful',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.getTransactionInfo(tId))
          .thenAnswer((_) async => tPOSModel);

      // Act
      final result = await repository.getTransactionInfo(tId);

      // Assert
      verify(() => mockRemoteDataSource.getTransactionInfo(tId));
      expect(result, isA<Right<Failure, POSModel>>());
    });

    test('should return ReceiptModel when makePayment is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.makePayment(tId))
          .thenAnswer((_) async => tReceiptModel);

      // Act
      final result = await repository.makePayment(tId);

      // Assert
      verify(() => mockRemoteDataSource.makePayment(tId));
      expect(result, isA<Right<Failure, ReceiptModel>>());
    });
  });
}
