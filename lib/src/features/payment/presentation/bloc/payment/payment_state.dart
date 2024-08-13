part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({
    @Default(ViewState.idle) ViewState viewState,
    @Default(ViewState.idle) ViewState makePaymentState,
    @Default(ViewState.idle) ViewState printingState,
    String? errorMessage,
    POSModel? posModel,
    ReceiptModel? receiptModel,
  }) = _Initial;
}
