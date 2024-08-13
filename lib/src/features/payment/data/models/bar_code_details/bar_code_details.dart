import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';

part 'bar_code_details.freezed.dart';
part 'bar_code_details.g.dart';

BarCodeDetail barCodeDetailFromMap(String str) =>
    BarCodeDetail.fromJson(json.decode(str) as Map<String, dynamic>);

String barCodeDetailToMap(BarCodeDetail data) => json.encode(data.toJson());

@freezed
class BarCodeDetail with _$BarCodeDetail {
  const factory BarCodeDetail({
    @JsonKey(name: 'crypto_details') required CryptoDetails cryptoDetails,
    required Customer customer,
    @JsonKey(name: 'transaction_id') required String transactionId,
  }) = _BarCodeDetail;

  factory BarCodeDetail.fromJson(Map<String, dynamic> json) =>
      _$BarCodeDetailFromJson(json);
}
