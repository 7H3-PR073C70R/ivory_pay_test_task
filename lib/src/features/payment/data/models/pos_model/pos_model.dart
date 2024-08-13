import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pos_model.freezed.dart';
part 'pos_model.g.dart';

POSModel posModelFromMap(String str) => POSModel.fromJson(json.decode(str));

String posModelToMap(POSModel data) => json.encode(data.toJson());

@freezed
class POSModel with _$POSModel {
    const factory POSModel({
        @JsonKey(name: "crypto_details")
        CryptoDetails? cryptoDetails,
        @JsonKey(name: "customer")
        Customer? customer,
        @JsonKey(name: "transaction")
        Transaction? transaction,
    }) = _POSModel;

    factory POSModel.fromJson(Map<String, dynamic> json) => _$POSModelFromJson(json);
}

@freezed
class CryptoDetails with _$CryptoDetails {
    const factory CryptoDetails({
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "network")
        String? network,
    }) = _CryptoDetails;

    factory CryptoDetails.fromJson(Map<String, dynamic> json) => _$CryptoDetailsFromJson(json);
}

@freezed
class Customer with _$Customer {
    const factory Customer({
        @JsonKey(name: "customer_id")
        String? customerId,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "crypto_wallet_address")
        String? cryptoWalletAddress,
        @JsonKey(name: "qr_code")
        String? qrCode,
    }) = _Customer;

    factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
class Transaction with _$Transaction {
    const factory Transaction({
        @JsonKey(name: "transaction_id")
        String? transactionId,
        @JsonKey(name: "date_time")
        DateTime? dateTime,
        @JsonKey(name: "items")
        List<Item>? items,
        @JsonKey(name: "total_amount")
        double? totalAmount,
        @JsonKey(name: "payment_status")
        String? paymentStatus,
        @JsonKey(name: "payment_method")
        String? paymentMethod,
        @JsonKey(name: "crypto_wallet")
        CryptoWallet? cryptoWallet,
    }) = _Transaction;

    factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}

@freezed
class CryptoWallet with _$CryptoWallet {
    const factory CryptoWallet({
        @JsonKey(name: "wallet_address")
        String? walletAddress,
        @JsonKey(name: "transaction_hash")
        String? transactionHash,
    }) = _CryptoWallet;

    factory CryptoWallet.fromJson(Map<String, dynamic> json) => _$CryptoWalletFromJson(json);
}

@freezed
class Item with _$Item {
    const factory Item({
        @JsonKey(name: "item_id")
        String? itemId,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "quantity")
        int? quantity,
        @JsonKey(name: "unit_price")
        double? unitPrice,
        @JsonKey(name: "total_price")
        double? totalPrice,
    }) = _Item;

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
