import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/core/extensions/repository_extension.dart';
import 'package:ivory_pay_test_task/src/di/locator.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/get_transaction_info_use_case.dart';
import 'package:ivory_pay_test_task/src/features/payment/domain/usecases/make_payment_use_case.dart';
import 'package:ivory_pay_test_task/src/services/bluetooth_printer_service.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit({
    GetTransactionInfoUseCase? getTransactionInfoUseCase,
    MakePaymentUseCase? makePaymentUseCase,
    BluetoothPrinterService? bluetoothPrinterService,
  })  : _getTransactionInfoUseCase =
            getTransactionInfoUseCase ?? locator<GetTransactionInfoUseCase>(),
        _makePaymentUseCase =
            makePaymentUseCase ?? locator<MakePaymentUseCase>(),
        _bluetoothPrinterService =
            bluetoothPrinterService ?? locator<BluetoothPrinterService>(),
        super(const PaymentState.initial());

  final GetTransactionInfoUseCase _getTransactionInfoUseCase;
  final MakePaymentUseCase _makePaymentUseCase;
  final BluetoothPrinterService _bluetoothPrinterService;

  Future<void> getTransactionInfo(String transactionId) async {
    emit(state.copyWith(viewState: ViewState.processing));
    await _getTransactionInfoUseCase(transactionId).then(
      (response) => response.fold(
        (error) => emit(
          state.copyWith(
            viewState: ViewState.error,
            errorMessage: error.message,
          ),
        ),
        (posModel) => emit(
          state.copyWith(
            posModel: posModel,
            viewState: ViewState.success,
          ),
        ),
      ),
    );
    emit(
      state.copyWith(
        viewState: ViewState.idle,
        errorMessage: null,
      ),
    );
  }

  Future<void> makePayment(String transactionId) async {
    emit(state.copyWith(makePaymentState: ViewState.processing));
    await _makePaymentUseCase(transactionId).then(
      (response) => response.fold(
        (error) => emit(
          state.copyWith(
            makePaymentState: ViewState.error,
            errorMessage: error.message,
          ),
        ),
        (receiptModel) => emit(
          state.copyWith(
            receiptModel: receiptModel,
            makePaymentState: ViewState.success,
          ),
        ),
      ),
    );

    emit(
      state.copyWith(
        makePaymentState: ViewState.idle,
        errorMessage: null,
      ),
    );
  }

  Future<void> printReceipt() async {
    emit(state.copyWith(printingState: ViewState.processing));
    await _bluetoothPrinterService.connectToPrinter();
    if (await _bluetoothPrinterService.isConnected()) {
      await _bluetoothPrinterService
          .printReceipt(state.receiptModel!)
          .makeRequest()
          .then(
            (result) => result.fold(
              (error) => emit(
                state.copyWith(
                  printingState: ViewState.error,
                  errorMessage: 'Unable to print receipt',
                ),
              ),
              (_) => emit(
                state.copyWith(
                  printingState: ViewState.success,
                  errorMessage: null,
                ),
              ),
            ),
          );
    } else {
      emit(
        state.copyWith(
          printingState: ViewState.error,
          errorMessage: 'Printer not connected',
        ),
      );
    }
  }
}
