import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/core/error/failure.dart';

import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/make_payment_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/sample_data.dart';

class MockPaymentRepository extends Mock implements PaymentRepository {}

void main() {
  late MakePaymentUseCase useCase;
  late MockPaymentRepository mockPaymentRepository;

  setUp(() {
    mockPaymentRepository = MockPaymentRepository();
    useCase = MakePaymentUseCase(mockPaymentRepository);
  });

  test('should return ReceiptModel when the call to repository is successful',
      () async {
    // Arrange
    when(() => mockPaymentRepository.makePayment(tId)).thenAnswer(
      (_) async => Right(tReceiptModel),
    );

    // Act
    final result = await useCase(tId);

    // Assert
    expect(result, isA<Right<Failure, ReceiptModel>>());
    verify(() => mockPaymentRepository.makePayment(tId));
    verifyNoMoreInteractions(mockPaymentRepository);
  });

  test('should return Failure when the call to repository fails', () async {
    // Arrange
    const tFailure = ServerFailure(message: 'Server error');
    when(() => mockPaymentRepository.makePayment(tId)).thenAnswer(
      (_) async => const Left(tFailure),
    );

    // Act
    final result = await useCase(tId);

    // Assert
    expect(result, const Left<Failure, ReceiptModel>(tFailure));
    verify(() => mockPaymentRepository.makePayment(tId));
    verifyNoMoreInteractions(mockPaymentRepository);
  });
}
