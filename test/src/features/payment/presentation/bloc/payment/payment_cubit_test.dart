import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/core/error/failure.dart';
import 'package:ivory_pay_test_task/src/core/utils/either.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/get_transaction_info_use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/make_payment_use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/payment/payment_cubit.dart';
import 'package:ivory_pay_test_task/src/services/bluetooth_printer_service.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../helpers/sample_data.dart';

class MockGetTransactionInfoUseCase extends Mock
    implements GetTransactionInfoUseCase {}

class MockMakePaymentUseCase extends Mock implements MakePaymentUseCase {}

class MockBluetoothPrinterService extends Mock
    implements BluetoothPrinterService {}

void main() {
  late PaymentCubit paymentCubit;
  late MockGetTransactionInfoUseCase mockGetTransactionInfoUseCase;
  late MockMakePaymentUseCase mockMakePaymentUseCase;
  late MockBluetoothPrinterService mockBluetoothPrinterService;

  setUp(() {
    mockGetTransactionInfoUseCase = MockGetTransactionInfoUseCase();
    mockMakePaymentUseCase = MockMakePaymentUseCase();
    mockBluetoothPrinterService = MockBluetoothPrinterService();
    paymentCubit = PaymentCubit(
      getTransactionInfoUseCase: mockGetTransactionInfoUseCase,
      makePaymentUseCase: mockMakePaymentUseCase,
      bluetoothPrinterService: mockBluetoothPrinterService,
    );
  });

  group('PaymentCubit', () {
    const tFailure = ServerFailure(message: 'Server error');
    const initialState = PaymentState.initial();

    test('obh', () {
      expect(const PaymentState.initial(), const PaymentState.initial());
    });

    blocTest<PaymentCubit, PaymentState>(
      'emits [processing, error] when getTransactionInfo fails',
      build: () {
        when(() => mockGetTransactionInfoUseCase(tId))
            .thenAnswer((_) async => const Left(tFailure));
        return paymentCubit;
      },
      act: (cubit) => cubit.getTransactionInfo(tId),
      expect: () => [
        initialState.copyWith(viewState: ViewState.processing),
        initialState.copyWith(
          viewState: ViewState.error,
          errorMessage: tFailure.message,
        ),
        initialState.copyWith(viewState: ViewState.idle, errorMessage: null),
      ],
    );

    blocTest<PaymentCubit, PaymentState>(
      'emits [processing, error] when makePayment fails',
      build: () {
        when(() => mockMakePaymentUseCase(tId))
            .thenAnswer((_) async => const Left(tFailure));
        return paymentCubit;
      },
      act: (cubit) => cubit.makePayment(tId),
      expect: () => [
        initialState.copyWith(makePaymentState: ViewState.processing),
        initialState.copyWith(
          makePaymentState: ViewState.error,
          errorMessage: tFailure.message,
        ),
        initialState.copyWith(
          makePaymentState: ViewState.idle,
          errorMessage: null,
        ),
      ],
    );

    blocTest<PaymentCubit, PaymentState>(
      'emits [processing, error] when printReceipt fails due to not'
      ' connected printer',
      build: () {
        when(() => mockBluetoothPrinterService.connectToPrinter())
            .thenAnswer((_) async => true);
        when(() => mockBluetoothPrinterService.isConnected())
            .thenAnswer((_) async => false);
        return paymentCubit;
      },
      act: (cubit) => cubit.printReceipt(),
      expect: () => [
        initialState.copyWith(printingState: ViewState.processing),
        initialState.copyWith(
          printingState: ViewState.error,
          errorMessage: 'Printer not connected',
        ),
      ],
    );
  });
}
