import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ivory_pay_test_task/src/core/enums/enums.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/bar_code_details/bar_code_details.dart';
import 'package:ivory_pay_test_task/src/features/payment/presentation/bloc/qr_code_cubit/qr_code_cubit.dart';

import '../../../../../../helpers/sample_data.dart';

void main() {
  group('QrCodeCubit', () {
    const initialState = QrCodeState.initial();

    blocTest<QrCodeCubit, QrCodeState>(
      'emits [success, idle] when updateQRModel is called with a valid QR code',
      build: QrCodeCubit.new,
      act: (cubit) => cubit.updateQRModel(qrCode),
      expect: () => [
        initialState.copyWith(
          barCodeDetail: barCodeDetailFromMap(qrCode),
          viewState: ViewState.success,
        ),
        initialState.copyWith(
          barCodeDetail: barCodeDetailFromMap(qrCode),
          viewState: ViewState.idle,
        ),
      ],
    );

    blocTest<QrCodeCubit, QrCodeState>(
      'emits [error, idle] when updateQRModel is called with'
      ' an invalid QR code',
      build: QrCodeCubit.new,
      act: (cubit) => cubit.updateQRModel('invalid_json'),
      expect: () => [
        initialState.copyWith(viewState: ViewState.error),
        initialState.copyWith(viewState: ViewState.idle),
      ],
    );
  });
}
