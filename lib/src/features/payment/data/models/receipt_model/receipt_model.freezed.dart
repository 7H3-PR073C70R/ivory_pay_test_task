// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) {
  return _ReceiptModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptModel {
  @JsonKey(name: "receipt_id")
  String? get receiptId => throw _privateConstructorUsedError;
  @JsonKey(name: "crypto_currency")
  String? get cryptoCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String? get network => throw _privateConstructorUsedError;
  @JsonKey(name: "date_time")
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<Item>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_status")
  String? get printerStatus => throw _privateConstructorUsedError;

  /// Serializes this ReceiptModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptModelCopyWith<ReceiptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptModelCopyWith<$Res> {
  factory $ReceiptModelCopyWith(
          ReceiptModel value, $Res Function(ReceiptModel) then) =
      _$ReceiptModelCopyWithImpl<$Res, ReceiptModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "receipt_id") String? receiptId,
      @JsonKey(name: "crypto_currency") String? cryptoCurrency,
      @JsonKey(name: "network") String? network,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "printer_status") String? printerStatus});
}

/// @nodoc
class _$ReceiptModelCopyWithImpl<$Res, $Val extends ReceiptModel>
    implements $ReceiptModelCopyWith<$Res> {
  _$ReceiptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = freezed,
    Object? cryptoCurrency = freezed,
    Object? network = freezed,
    Object? dateTime = freezed,
    Object? items = freezed,
    Object? totalAmount = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? printerStatus = freezed,
  }) {
    return _then(_value.copyWith(
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoCurrency: freezed == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
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
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      printerStatus: freezed == printerStatus
          ? _value.printerStatus
          : printerStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptModelImplCopyWith<$Res>
    implements $ReceiptModelCopyWith<$Res> {
  factory _$$ReceiptModelImplCopyWith(
          _$ReceiptModelImpl value, $Res Function(_$ReceiptModelImpl) then) =
      __$$ReceiptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "receipt_id") String? receiptId,
      @JsonKey(name: "crypto_currency") String? cryptoCurrency,
      @JsonKey(name: "network") String? network,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "printer_status") String? printerStatus});
}

/// @nodoc
class __$$ReceiptModelImplCopyWithImpl<$Res>
    extends _$ReceiptModelCopyWithImpl<$Res, _$ReceiptModelImpl>
    implements _$$ReceiptModelImplCopyWith<$Res> {
  __$$ReceiptModelImplCopyWithImpl(
      _$ReceiptModelImpl _value, $Res Function(_$ReceiptModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = freezed,
    Object? cryptoCurrency = freezed,
    Object? network = freezed,
    Object? dateTime = freezed,
    Object? items = freezed,
    Object? totalAmount = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? printerStatus = freezed,
  }) {
    return _then(_$ReceiptModelImpl(
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoCurrency: freezed == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
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
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      printerStatus: freezed == printerStatus
          ? _value.printerStatus
          : printerStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptModelImpl implements _ReceiptModel {
  const _$ReceiptModelImpl(
      {@JsonKey(name: "receipt_id") this.receiptId,
      @JsonKey(name: "crypto_currency") this.cryptoCurrency,
      @JsonKey(name: "network") this.network,
      @JsonKey(name: "date_time") this.dateTime,
      @JsonKey(name: "items") final List<Item>? items,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "printer_status") this.printerStatus})
      : _items = items;

  factory _$ReceiptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptModelImplFromJson(json);

  @override
  @JsonKey(name: "receipt_id")
  final String? receiptId;
  @override
  @JsonKey(name: "crypto_currency")
  final String? cryptoCurrency;
  @override
  @JsonKey(name: "network")
  final String? network;
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
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "printer_status")
  final String? printerStatus;

  @override
  String toString() {
    return 'ReceiptModel(receiptId: $receiptId, cryptoCurrency: $cryptoCurrency, network: $network, dateTime: $dateTime, items: $items, totalAmount: $totalAmount, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, printerStatus: $printerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptModelImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId) &&
            (identical(other.cryptoCurrency, cryptoCurrency) ||
                other.cryptoCurrency == cryptoCurrency) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.printerStatus, printerStatus) ||
                other.printerStatus == printerStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiptId,
      cryptoCurrency,
      network,
      dateTime,
      const DeepCollectionEquality().hash(_items),
      totalAmount,
      paymentMethod,
      paymentStatus,
      printerStatus);

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      __$$ReceiptModelImplCopyWithImpl<_$ReceiptModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiptModel implements ReceiptModel {
  const factory _ReceiptModel(
          {@JsonKey(name: "receipt_id") final String? receiptId,
          @JsonKey(name: "crypto_currency") final String? cryptoCurrency,
          @JsonKey(name: "network") final String? network,
          @JsonKey(name: "date_time") final DateTime? dateTime,
          @JsonKey(name: "items") final List<Item>? items,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "printer_status") final String? printerStatus}) =
      _$ReceiptModelImpl;

  factory _ReceiptModel.fromJson(Map<String, dynamic> json) =
      _$ReceiptModelImpl.fromJson;

  @override
  @JsonKey(name: "receipt_id")
  String? get receiptId;
  @override
  @JsonKey(name: "crypto_currency")
  String? get cryptoCurrency;
  @override
  @JsonKey(name: "network")
  String? get network;
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
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "printer_status")
  String? get printerStatus;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
