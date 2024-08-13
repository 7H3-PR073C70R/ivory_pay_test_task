// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$POSModelImpl _$$POSModelImplFromJson(Map<String, dynamic> json) =>
    _$POSModelImpl(
      cryptoDetails: json['crypto_details'] == null
          ? null
          : CryptoDetails.fromJson(
              json['crypto_details'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      transaction: json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$POSModelImplToJson(_$POSModelImpl instance) =>
    <String, dynamic>{
      'crypto_details': instance.cryptoDetails,
      'customer': instance.customer,
      'transaction': instance.transaction,
    };

_$CryptoDetailsImpl _$$CryptoDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CryptoDetailsImpl(
      currency: json['currency'] as String?,
      network: json['network'] as String?,
    );

Map<String, dynamic> _$$CryptoDetailsImplToJson(_$CryptoDetailsImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'network': instance.network,
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      customerId: json['customer_id'] as String?,
      name: json['name'] as String?,
      cryptoWalletAddress: json['crypto_wallet_address'] as String?,
      qrCode: json['qr_code'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'name': instance.name,
      'crypto_wallet_address': instance.cryptoWalletAddress,
      'qr_code': instance.qrCode,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      transactionId: json['transaction_id'] as String?,
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      paymentStatus: json['payment_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      cryptoWallet: json['crypto_wallet'] == null
          ? null
          : CryptoWallet.fromJson(
              json['crypto_wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'date_time': instance.dateTime?.toIso8601String(),
      'items': instance.items,
      'total_amount': instance.totalAmount,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'crypto_wallet': instance.cryptoWallet,
    };

_$CryptoWalletImpl _$$CryptoWalletImplFromJson(Map<String, dynamic> json) =>
    _$CryptoWalletImpl(
      walletAddress: json['wallet_address'] as String?,
      transactionHash: json['transaction_hash'] as String?,
    );

Map<String, dynamic> _$$CryptoWalletImplToJson(_$CryptoWalletImpl instance) =>
    <String, dynamic>{
      'wallet_address': instance.walletAddress,
      'transaction_hash': instance.transactionHash,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      itemId: json['item_id'] as String?,
      description: json['description'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
    };
