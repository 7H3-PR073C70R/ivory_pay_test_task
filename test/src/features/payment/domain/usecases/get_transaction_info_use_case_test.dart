import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/repositories/payment_repository.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/get_transaction_info_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/sample_data.dart';

class MockPaymentRepository extends Mock implements PaymentRepository {}

void main() {
  late GetTransactionInfoUseCase useCase;
  late MockPaymentRepository mockPaymentRepository;

  setUp(() {
    mockPaymentRepository = MockPaymentRepository();
    useCase = GetTransactionInfoUseCase(mockPaymentRepository);
  });

  test('should return POSModel when the call to repository is successful',
      () async {
    // Arrange
    when(() => mockPaymentRepository.getTransactionInfo(tId)).thenAnswer(
      (_) async => Right(tPOSModel),
    );

    // Act
    final result = await useCase(tId);

    // Assert
    expect(result, isA<Right<Failure, POSModel>>());
    verify(() => mockPaymentRepository.getTransactionInfo(tId));
    verifyNoMoreInteractions(mockPaymentRepository);
  });

  test('should return Failure when the call to repository fails', () async {
    // Arrange
    const tFailure = ServerFailure(message: 'Server error');
    when(() => mockPaymentRepository.getTransactionInfo(tId)).thenAnswer(
      (_) async => const Left(tFailure),
    );

    // Act
    final result = await useCase(tId);

    // Assert
    expect(result, const Left<Failure, POSModel>(tFailure));
    verify(() => mockPaymentRepository.getTransactionInfo(tId));
    verifyNoMoreInteractions(mockPaymentRepository);
  });
}
