// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_code_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarCodeDetailImpl _$$BarCodeDetailImplFromJson(Map<String, dynamic> json) =>
    _$BarCodeDetailImpl(
      cryptoDetails: CryptoDetails.fromJson(
          json['crypto_details'] as Map<String, dynamic>),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      transactionId: json['transaction_id'] as String,
    );

Map<String, dynamic> _$$BarCodeDetailImplToJson(_$BarCodeDetailImpl instance) =>
    <String, dynamic>{
      'crypto_details': instance.cryptoDetails,
      'customer': instance.customer,
      'transaction_id': instance.transactionId,
    };
