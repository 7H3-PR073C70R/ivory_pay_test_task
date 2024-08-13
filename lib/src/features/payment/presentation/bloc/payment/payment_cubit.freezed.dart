// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  ViewState get viewState => throw _privateConstructorUsedError;
  ViewState get makePaymentState => throw _privateConstructorUsedError;
  ViewState get printingState => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  POSModel? get posModel => throw _privateConstructorUsedError;
  ReceiptModel? get receiptModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {ViewState viewState,
      ViewState makePaymentState,
      ViewState printingState,
      String? errorMessage,
      POSModel? posModel,
      ReceiptModel? receiptModel});

  $POSModelCopyWith<$Res>? get posModel;
  $ReceiptModelCopyWith<$Res>? get receiptModel;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? makePaymentState = null,
    Object? printingState = null,
    Object? errorMessage = freezed,
    Object? posModel = freezed,
    Object? receiptModel = freezed,
  }) {
    return _then(_value.copyWith(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      makePaymentState: null == makePaymentState
          ? _value.makePaymentState
          : makePaymentState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      printingState: null == printingState
          ? _value.printingState
          : printingState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      posModel: freezed == posModel
          ? _value.posModel
          : posModel // ignore: cast_nullable_to_non_nullable
              as POSModel?,
      receiptModel: freezed == receiptModel
          ? _value.receiptModel
          : receiptModel // ignore: cast_nullable_to_non_nullable
              as ReceiptModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $POSModelCopyWith<$Res>? get posModel {
    if (_value.posModel == null) {
      return null;
    }

    return $POSModelCopyWith<$Res>(_value.posModel!, (value) {
      return _then(_value.copyWith(posModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiptModelCopyWith<$Res>? get receiptModel {
    if (_value.receiptModel == null) {
      return null;
    }

    return $ReceiptModelCopyWith<$Res>(_value.receiptModel!, (value) {
      return _then(_value.copyWith(receiptModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState viewState,
      ViewState makePaymentState,
      ViewState printingState,
      String? errorMessage,
      POSModel? posModel,
      ReceiptModel? receiptModel});

  @override
  $POSModelCopyWith<$Res>? get posModel;
  @override
  $ReceiptModelCopyWith<$Res>? get receiptModel;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? makePaymentState = null,
    Object? printingState = null,
    Object? errorMessage = freezed,
    Object? posModel = freezed,
    Object? receiptModel = freezed,
  }) {
    return _then(_$InitialImpl(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      makePaymentState: null == makePaymentState
          ? _value.makePaymentState
          : makePaymentState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      printingState: null == printingState
          ? _value.printingState
          : printingState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      posModel: freezed == posModel
          ? _value.posModel
          : posModel // ignore: cast_nullable_to_non_nullable
              as POSModel?,
      receiptModel: freezed == receiptModel
          ? _value.receiptModel
          : receiptModel // ignore: cast_nullable_to_non_nullable
              as ReceiptModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.viewState = ViewState.idle,
      this.makePaymentState = ViewState.idle,
      this.printingState = ViewState.idle,
      this.errorMessage,
      this.posModel,
      this.receiptModel});

  @override
  @JsonKey()
  final ViewState viewState;
  @override
  @JsonKey()
  final ViewState makePaymentState;
  @override
  @JsonKey()
  final ViewState printingState;
  @override
  final String? errorMessage;
  @override
  final POSModel? posModel;
  @override
  final ReceiptModel? receiptModel;

  @override
  String toString() {
    return 'PaymentState.initial(viewState: $viewState, makePaymentState: $makePaymentState, printingState: $printingState, errorMessage: $errorMessage, posModel: $posModel, receiptModel: $receiptModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.makePaymentState, makePaymentState) ||
                other.makePaymentState == makePaymentState) &&
            (identical(other.printingState, printingState) ||
                other.printingState == printingState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.posModel, posModel) ||
                other.posModel == posModel) &&
            (identical(other.receiptModel, receiptModel) ||
                other.receiptModel == receiptModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState, makePaymentState,
      printingState, errorMessage, posModel, receiptModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)
        initial,
  }) {
    return initial(viewState, makePaymentState, printingState, errorMessage,
        posModel, receiptModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)?
        initial,
  }) {
    return initial?.call(viewState, makePaymentState, printingState,
        errorMessage, posModel, receiptModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            ViewState makePaymentState,
            ViewState printingState,
            String? errorMessage,
            POSModel? posModel,
            ReceiptModel? receiptModel)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(viewState, makePaymentState, printingState, errorMessage,
          posModel, receiptModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial(
      {final ViewState viewState,
      final ViewState makePaymentState,
      final ViewState printingState,
      final String? errorMessage,
      final POSModel? posModel,
      final ReceiptModel? receiptModel}) = _$InitialImpl;

  @override
  ViewState get viewState;
  @override
  ViewState get makePaymentState;
  @override
  ViewState get printingState;
  @override
  String? get errorMessage;
  @override
  POSModel? get posModel;
  @override
  ReceiptModel? get receiptModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
