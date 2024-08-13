import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';

import 'dart:convert';

part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

ReceiptModel receiptModelFromMap(String str) =>
    ReceiptModel.fromJson(json.decode(str));

String receiptModelToMap(ReceiptModel data) => json.encode(data.toJson());

@freezed
class ReceiptModel with _$ReceiptModel {
  const factory ReceiptModel({
    @JsonKey(name: "receipt_id") String? receiptId,
    @JsonKey(name: "crypto_currency") String? cryptoCurrency,
    @JsonKey(name: "network") String? network,
    @JsonKey(name: "date_time") DateTime? dateTime,
    @JsonKey(name: "items") List<Item>? items,
    @JsonKey(name: "total_amount") double? totalAmount,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "payment_status") String? paymentStatus,
    @JsonKey(name: "printer_status") String? printerStatus,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);
}
