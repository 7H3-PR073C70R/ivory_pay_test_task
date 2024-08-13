// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar_code_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarCodeDetail _$BarCodeDetailFromJson(Map<String, dynamic> json) {
  return _BarCodeDetail.fromJson(json);
}

/// @nodoc
mixin _$BarCodeDetail {
  @JsonKey(name: 'crypto_details')
  CryptoDetails get cryptoDetails => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarCodeDetailCopyWith<BarCodeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarCodeDetailCopyWith<$Res> {
  factory $BarCodeDetailCopyWith(
          BarCodeDetail value, $Res Function(BarCodeDetail) then) =
      _$BarCodeDetailCopyWithImpl<$Res, BarCodeDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'crypto_details') CryptoDetails cryptoDetails,
      Customer customer,
      @JsonKey(name: 'transaction_id') String transactionId});

  $CryptoDetailsCopyWith<$Res> get cryptoDetails;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$BarCodeDetailCopyWithImpl<$Res, $Val extends BarCodeDetail>
    implements $BarCodeDetailCopyWith<$Res> {
  _$BarCodeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoDetails = null,
    Object? customer = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      cryptoDetails: null == cryptoDetails
          ? _value.cryptoDetails
          : cryptoDetails // ignore: cast_nullable_to_non_nullable
              as CryptoDetails,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoDetailsCopyWith<$Res> get cryptoDetails {
    return $CryptoDetailsCopyWith<$Res>(_value.cryptoDetails, (value) {
      return _then(_value.copyWith(cryptoDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BarCodeDetailImplCopyWith<$Res>
    implements $BarCodeDetailCopyWith<$Res> {
  factory _$$BarCodeDetailImplCopyWith(
          _$BarCodeDetailImpl value, $Res Function(_$BarCodeDetailImpl) then) =
      __$$BarCodeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'crypto_details') CryptoDetails cryptoDetails,
      Customer customer,
      @JsonKey(name: 'transaction_id') String transactionId});

  @override
  $CryptoDetailsCopyWith<$Res> get cryptoDetails;
  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$BarCodeDetailImplCopyWithImpl<$Res>
    extends _$BarCodeDetailCopyWithImpl<$Res, _$BarCodeDetailImpl>
    implements _$$BarCodeDetailImplCopyWith<$Res> {
  __$$BarCodeDetailImplCopyWithImpl(
      _$BarCodeDetailImpl _value, $Res Function(_$BarCodeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoDetails = null,
    Object? customer = null,
    Object? transactionId = null,
  }) {
    return _then(_$BarCodeDetailImpl(
      cryptoDetails: null == cryptoDetails
          ? _value.cryptoDetails
          : cryptoDetails // ignore: cast_nullable_to_non_nullable
              as CryptoDetails,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarCodeDetailImpl implements _BarCodeDetail {
  const _$BarCodeDetailImpl(
      {@JsonKey(name: 'crypto_details') required this.cryptoDetails,
      required this.customer,
      @JsonKey(name: 'transaction_id') required this.transactionId});

  factory _$BarCodeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarCodeDetailImplFromJson(json);

  @override
  @JsonKey(name: 'crypto_details')
  final CryptoDetails cryptoDetails;
  @override
  final Customer customer;
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;

  @override
  String toString() {
    return 'BarCodeDetail(cryptoDetails: $cryptoDetails, customer: $customer, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarCodeDetailImpl &&
            (identical(other.cryptoDetails, cryptoDetails) ||
                other.cryptoDetails == cryptoDetails) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cryptoDetails, customer, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarCodeDetailImplCopyWith<_$BarCodeDetailImpl> get copyWith =>
      __$$BarCodeDetailImplCopyWithImpl<_$BarCodeDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarCodeDetailImplToJson(
      this,
    );
  }
}

abstract class _BarCodeDetail implements BarCodeDetail {
  const factory _BarCodeDetail(
      {@JsonKey(name: 'crypto_details')
      required final CryptoDetails cryptoDetails,
      required final Customer customer,
      @JsonKey(name: 'transaction_id')
      required final String transactionId}) = _$BarCodeDetailImpl;

  factory _BarCodeDetail.fromJson(Map<String, dynamic> json) =
      _$BarCodeDetailImpl.fromJson;

  @override
  @JsonKey(name: 'crypto_details')
  CryptoDetails get cryptoDetails;
  @override
  Customer get customer;
  @override
  @JsonKey(name: 'transaction_id')
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$BarCodeDetailImplCopyWith<_$BarCodeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
