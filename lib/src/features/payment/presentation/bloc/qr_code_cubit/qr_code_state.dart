part of 'qr_code_cubit.dart';

@freezed
class QrCodeState with _$QrCodeState {
  const factory QrCodeState.initial({
    @Default(ViewState.idle) ViewState viewState,
    BarCodeDetail? barCodeDetail,
  }) = _Initial;
}
