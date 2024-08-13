// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

POSModel _$POSModelFromJson(Map<String, dynamic> json) {
  return _POSModel.fromJson(json);
}

/// @nodoc
mixin _$POSModel {
  @JsonKey(name: "crypto_details")
  CryptoDetails? get cryptoDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  Customer? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction")
  Transaction? get transaction => throw _privateConstructorUsedError;

  /// Serializes this POSModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $POSModelCopyWith<POSModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSModelCopyWith<$Res> {
  factory $POSModelCopyWith(POSModel value, $Res Function(POSModel) then) =
      _$POSModelCopyWithImpl<$Res, POSModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "crypto_details") CryptoDetails? cryptoDetails,
      @JsonKey(name: "customer") Customer? customer,
      @JsonKey(name: "transaction") Transaction? transaction});

  $CryptoDetailsCopyWith<$Res>? get cryptoDetails;
  $CustomerCopyWith<$Res>? get customer;
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$POSModelCopyWithImpl<$Res, $Val extends POSModel>
    implements $POSModelCopyWith<$Res> {
  _$POSModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoDetails = freezed,
    Object? customer = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      cryptoDetails: freezed == cryptoDetails
          ? _value.cryptoDetails
          : cryptoDetails // ignore: cast_nullable_to_non_nullable
              as CryptoDetails?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ) as $Val);
  }

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CryptoDetailsCopyWith<$Res>? get cryptoDetails {
    if (_value.cryptoDetails == null) {
      return null;
    }

    return $CryptoDetailsCopyWith<$Res>(_value.cryptoDetails!, (value) {
      return _then(_value.copyWith(cryptoDetails: value) as $Val);
    });
  }

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$POSModelImplCopyWith<$Res>
    implements $POSModelCopyWith<$Res> {
  factory _$$POSModelImplCopyWith(
          _$POSModelImpl value, $Res Function(_$POSModelImpl) then) =
      __$$POSModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "crypto_details") CryptoDetails? cryptoDetails,
      @JsonKey(name: "customer") Customer? customer,
      @JsonKey(name: "transaction") Transaction? transaction});

  @override
  $CryptoDetailsCopyWith<$Res>? get cryptoDetails;
  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$POSModelImplCopyWithImpl<$Res>
    extends _$POSModelCopyWithImpl<$Res, _$POSModelImpl>
    implements _$$POSModelImplCopyWith<$Res> {
  __$$POSModelImplCopyWithImpl(
      _$POSModelImpl _value, $Res Function(_$POSModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoDetails = freezed,
    Object? customer = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$POSModelImpl(
      cryptoDetails: freezed == cryptoDetails
          ? _value.cryptoDetails
          : cryptoDetails // ignore: cast_nullable_to_non_nullable
              as CryptoDetails?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$POSModelImpl implements _POSModel {
  const _$POSModelImpl(
      {@JsonKey(name: "crypto_details") this.cryptoDetails,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "transaction") this.transaction});

  factory _$POSModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$POSModelImplFromJson(json);

  @override
  @JsonKey(name: "crypto_details")
  final CryptoDetails? cryptoDetails;
  @override
  @JsonKey(name: "customer")
  final Customer? customer;
  @override
  @JsonKey(name: "transaction")
  final Transaction? transaction;

  @override
  String toString() {
    return 'POSModel(cryptoDetails: $cryptoDetails, customer: $customer, transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$POSModelImpl &&
            (identical(other.cryptoDetails, cryptoDetails) ||
                other.cryptoDetails == cryptoDetails) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cryptoDetails, customer, transaction);

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$POSModelImplCopyWith<_$POSModelImpl> get copyWith =>
      __$$POSModelImplCopyWithImpl<_$POSModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$POSModelImplToJson(
      this,
    );
  }
}

abstract class _POSModel implements POSModel {
  const factory _POSModel(
          {@JsonKey(name: "crypto_details") final CryptoDetails? cryptoDetails,
          @JsonKey(name: "customer") final Customer? customer,
          @JsonKey(name: "transaction") final Transaction? transaction}) =
      _$POSModelImpl;

  factory _POSModel.fromJson(Map<String, dynamic> json) =
      _$POSModelImpl.fromJson;

  @override
  @JsonKey(name: "crypto_details")
  CryptoDetails? get cryptoDetails;
  @override
  @JsonKey(name: "customer")
  Customer? get customer;
  @override
  @JsonKey(name: "transaction")
  Transaction? get transaction;

  /// Create a copy of POSModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$POSModelImplCopyWith<_$POSModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptoDetails _$CryptoDetailsFromJson(Map<String, dynamic> json) {
  return _CryptoDetails.fromJson(json);
}

/// @nodoc
mixin _$CryptoDetails {
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String? get network => throw _privateConstructorUsedError;

  /// Serializes this CryptoDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoDetailsCopyWith<CryptoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoDetailsCopyWith<$Res> {
  factory $CryptoDetailsCopyWith(
          CryptoDetails value, $Res Function(CryptoDetails) then) =
      _$CryptoDetailsCopyWithImpl<$Res, CryptoDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "currency") String? currency,
      @JsonKey(name: "network") String? network});
}

/// @nodoc
class _$CryptoDetailsCopyWithImpl<$Res, $Val extends CryptoDetails>
    implements $CryptoDetailsCopyWith<$Res> {
  _$CryptoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? network = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoDetailsImplCopyWith<$Res>
    implements $CryptoDetailsCopyWith<$Res> {
  factory _$$CryptoDetailsImplCopyWith(
          _$CryptoDetailsImpl value, $Res Function(_$CryptoDetailsImpl) then) =
      __$$CryptoDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currency") String? currency,
      @JsonKey(name: "network") String? network});
}

/// @nodoc
class __$$CryptoDetailsImplCopyWithImpl<$Res>
    extends _$CryptoDetailsCopyWithImpl<$Res, _$CryptoDetailsImpl>
    implements _$$CryptoDetailsImplCopyWith<$Res> {
  __$$CryptoDetailsImplCopyWithImpl(
      _$CryptoDetailsImpl _value, $Res Function(_$CryptoDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? network = freezed,
  }) {
    return _then(_$CryptoDetailsImpl(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoDetailsImpl implements _CryptoDetails {
  const _$CryptoDetailsImpl(
      {@JsonKey(name: "currency") this.currency,
      @JsonKey(name: "network") this.network});

  factory _$CryptoDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoDetailsImplFromJson(json);

  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "network")
  final String? network;

  @override
  String toString() {
    return 'CryptoDetails(currency: $currency, network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoDetailsImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currency, network);

  /// Create a copy of CryptoDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoDetailsImplCopyWith<_$CryptoDetailsImpl> get copyWith =>
      __$$CryptoDetailsImplCopyWithImpl<_$CryptoDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoDetailsImplToJson(
      this,
    );
  }
}

abstract class _CryptoDetails implements CryptoDetails {
  const factory _CryptoDetails(
      {@JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "network") final String? network}) = _$CryptoDetailsImpl;

  factory _CryptoDetails.fromJson(Map<String, dynamic> json) =
      _$CryptoDetailsImpl.fromJson;

  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "network")
  String? get network;

  /// Create a copy of CryptoDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoDetailsImplCopyWith<_$CryptoDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "crypto_wallet_address")
  String? get cryptoWalletAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String? get qrCode => throw _privateConstructorUsedError;

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "crypto_wallet_address") String? cryptoWalletAddress,
      @JsonKey(name: "qr_code") String? qrCode});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? name = freezed,
    Object? cryptoWalletAddress = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoWalletAddress: freezed == cryptoWalletAddress
          ? _value.cryptoWalletAddress
          : cryptoWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "crypto_wallet_address") String? cryptoWalletAddress,
      @JsonKey(name: "qr_code") String? qrCode});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? name = freezed,
    Object? cryptoWalletAddress = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$CustomerImpl(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoWalletAddress: freezed == cryptoWalletAddress
          ? _value.cryptoWalletAddress
          : cryptoWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {@JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "crypto_wallet_address") this.cryptoWalletAddress,
      @JsonKey(name: "qr_code") this.qrCode});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "crypto_wallet_address")
  final String? cryptoWalletAddress;
  @override
  @JsonKey(name: "qr_code")
  final String? qrCode;

  @override
  String toString() {
    return 'Customer(customerId: $customerId, name: $name, cryptoWalletAddress: $cryptoWalletAddress, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cryptoWalletAddress, cryptoWalletAddress) ||
                other.cryptoWalletAddress == cryptoWalletAddress) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, name, cryptoWalletAddress, qrCode);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {@JsonKey(name: "customer_id") final String? customerId,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "crypto_wallet_address") final String? cryptoWalletAddress,
      @JsonKey(name: "qr_code") final String? qrCode}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "crypto_wallet_address")
  String? get cryptoWalletAddress;
  @override
  @JsonKey(name: "qr_code")
  String? get qrCode;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: "transaction_id")
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "date_time")
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<Item>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "crypto_wallet")
  CryptoWallet? get cryptoWallet => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") String? transactionId,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "crypto_wallet") CryptoWallet? cryptoWallet});

  $CryptoWalletCopyWith<$Res>? get cryptoWallet;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? dateTime = freezed,
    Object? items = freezed,
    Object? totalAmount = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? cryptoWallet = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoWallet: freezed == cryptoWallet
          ? _value.cryptoWallet
          : cryptoWallet // ignore: cast_nullable_to_non_nullable
              as CryptoWallet?,
    ) as $Val);
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CryptoWalletCopyWith<$Res>? get cryptoWallet {
    if (_value.cryptoWallet == null) {
      return null;
    }

    return $CryptoWalletCopyWith<$Res>(_value.cryptoWallet!, (value) {
      return _then(_value.copyWith(cryptoWallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") String? transactionId,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "crypto_wallet") CryptoWallet? cryptoWallet});

  @override
  $CryptoWalletCopyWith<$Res>? get cryptoWallet;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? dateTime = freezed,
    Object? items = freezed,
    Object? totalAmount = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? cryptoWallet = freezed,
  }) {
    return _then(_$TransactionImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoWallet: freezed == cryptoWallet
          ? _value.cryptoWallet
          : cryptoWallet // ignore: cast_nullable_to_non_nullable
              as CryptoWallet?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {@JsonKey(name: "transaction_id") this.transactionId,
      @JsonKey(name: "date_time") this.dateTime,
      @JsonKey(name: "items") final List<Item>? items,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "crypto_wallet") this.cryptoWallet})
      : _items = items;

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: "transaction_id")
  final String? transactionId;
  @override
  @JsonKey(name: "date_time")
  final DateTime? dateTime;
  final List<Item>? _items;
  @override
  @JsonKey(name: "items")
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "crypto_wallet")
  final CryptoWallet? cryptoWallet;

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, dateTime: $dateTime, items: $items, totalAmount: $totalAmount, paymentStatus: $paymentStatus, paymentMethod: $paymentMethod, cryptoWallet: $cryptoWallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.cryptoWallet, cryptoWallet) ||
                other.cryptoWallet == cryptoWallet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionId,
      dateTime,
      const DeepCollectionEquality().hash(_items),
      totalAmount,
      paymentStatus,
      paymentMethod,
      cryptoWallet);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
          {@JsonKey(name: "transaction_id") final String? transactionId,
          @JsonKey(name: "date_time") final DateTime? dateTime,
          @JsonKey(name: "items") final List<Item>? items,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "crypto_wallet") final CryptoWallet? cryptoWallet}) =
      _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: "transaction_id")
  String? get transactionId;
  @override
  @JsonKey(name: "date_time")
  DateTime? get dateTime;
  @override
  @JsonKey(name: "items")
  List<Item>? get items;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "crypto_wallet")
  CryptoWallet? get cryptoWallet;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptoWallet _$CryptoWalletFromJson(Map<String, dynamic> json) {
  return _CryptoWallet.fromJson(json);
}

/// @nodoc
mixin _$CryptoWallet {
  @JsonKey(name: "wallet_address")
  String? get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_hash")
  String? get transactionHash => throw _privateConstructorUsedError;

  /// Serializes this CryptoWallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoWalletCopyWith<CryptoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletCopyWith<$Res> {
  factory $CryptoWalletCopyWith(
          CryptoWallet value, $Res Function(CryptoWallet) then) =
      _$CryptoWalletCopyWithImpl<$Res, CryptoWallet>;
  @useResult
  $Res call(
      {@JsonKey(name: "wallet_address") String? walletAddress,
      @JsonKey(name: "transaction_hash") String? transactionHash});
}

/// @nodoc
class _$CryptoWalletCopyWithImpl<$Res, $Val extends CryptoWallet>
    implements $CryptoWalletCopyWith<$Res> {
  _$CryptoWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoWallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = freezed,
    Object? transactionHash = freezed,
  }) {
    return _then(_value.copyWith(
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoWalletImplCopyWith<$Res>
    implements $CryptoWalletCopyWith<$Res> {
  factory _$$CryptoWalletImplCopyWith(
          _$CryptoWalletImpl value, $Res Function(_$CryptoWalletImpl) then) =
      __$$CryptoWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "wallet_address") String? walletAddress,
      @JsonKey(name: "transaction_hash") String? transactionHash});
}

/// @nodoc
class __$$CryptoWalletImplCopyWithImpl<$Res>
    extends _$CryptoWalletCopyWithImpl<$Res, _$CryptoWalletImpl>
    implements _$$CryptoWalletImplCopyWith<$Res> {
  __$$CryptoWalletImplCopyWithImpl(
      _$CryptoWalletImpl _value, $Res Function(_$CryptoWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoWallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = freezed,
    Object? transactionHash = freezed,
  }) {
    return _then(_$CryptoWalletImpl(
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoWalletImpl implements _CryptoWallet {
  const _$CryptoWalletImpl(
      {@JsonKey(name: "wallet_address") this.walletAddress,
      @JsonKey(name: "transaction_hash") this.transactionHash});

  factory _$CryptoWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoWalletImplFromJson(json);

  @override
  @JsonKey(name: "wallet_address")
  final String? walletAddress;
  @override
  @JsonKey(name: "transaction_hash")
  final String? transactionHash;

  @override
  String toString() {
    return 'CryptoWallet(walletAddress: $walletAddress, transactionHash: $transactionHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoWalletImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.transactionHash, transactionHash) ||
                other.transactionHash == transactionHash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, transactionHash);

  /// Create a copy of CryptoWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoWalletImplCopyWith<_$CryptoWalletImpl> get copyWith =>
      __$$CryptoWalletImplCopyWithImpl<_$CryptoWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoWalletImplToJson(
      this,
    );
  }
}

abstract class _CryptoWallet implements CryptoWallet {
  const factory _CryptoWallet(
          {@JsonKey(name: "wallet_address") final String? walletAddress,
          @JsonKey(name: "transaction_hash") final String? transactionHash}) =
      _$CryptoWalletImpl;

  factory _CryptoWallet.fromJson(Map<String, dynamic> json) =
      _$CryptoWalletImpl.fromJson;

  @override
  @JsonKey(name: "wallet_address")
  String? get walletAddress;
  @override
  @JsonKey(name: "transaction_hash")
  String? get transactionHash;

  /// Create a copy of CryptoWallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoWalletImplCopyWith<_$CryptoWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "item_id")
  String? get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  double? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_price") double? unitPrice,
      @JsonKey(name: "total_price") double? totalPrice});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_price") double? unitPrice,
      @JsonKey(name: "total_price") double? totalPrice});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$ItemImpl(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "item_id") this.itemId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "unit_price") this.unitPrice,
      @JsonKey(name: "total_price") this.totalPrice});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "item_id")
  final String? itemId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "unit_price")
  final double? unitPrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;

  @override
  String toString() {
    return 'Item(itemId: $itemId, description: $description, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, description, quantity, unitPrice, totalPrice);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@JsonKey(name: "item_id") final String? itemId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "unit_price") final double? unitPrice,
      @JsonKey(name: "total_price") final double? totalPrice}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "item_id")
  String? get itemId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "unit_price")
  double? get unitPrice;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
