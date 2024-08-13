import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/bar_code_details/bar_code_details.dart';

part 'qr_code_state.dart';
part 'qr_code_cubit.freezed.dart';

class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit() : super(const QrCodeState.initial());

  void updateQRModel(String scannedValue) {
    try {
      final scannedQR = barCodeDetailFromMap(scannedValue);
      if (scannedQR == state.barCodeDetail) return;
      emit(
        state.copyWith(
          barCodeDetail: scannedQR,
          viewState: ViewState.success,
        ),
      );
    } catch (_, s) {
      debugPrint(s.toString());
      emit(
        state.copyWith(
          viewState: ViewState.error,
        ),
      );
    } finally {
      emit(
        state.copyWith(
          viewState: ViewState.idle,
        ),
      );
    }
  }
}
