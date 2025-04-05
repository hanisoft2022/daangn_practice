// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'w_floating_daangn_button.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FloatingDaangnButtonState _$FloatingDaangnButtonStateFromJson(
    Map<String, dynamic> json) {
  return _FloatingDaangnButtonState.fromJson(json);
}

/// @nodoc
mixin _$FloatingDaangnButtonState {
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isSmall => throw _privateConstructorUsedError;

  /// Serializes this FloatingDaangnButtonState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FloatingDaangnButtonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FloatingDaangnButtonStateCopyWith<FloatingDaangnButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloatingDaangnButtonStateCopyWith<$Res> {
  factory $FloatingDaangnButtonStateCopyWith(FloatingDaangnButtonState value,
          $Res Function(FloatingDaangnButtonState) then) =
      _$FloatingDaangnButtonStateCopyWithImpl<$Res, FloatingDaangnButtonState>;
  @useResult
  $Res call({bool isExpanded, bool isSmall});
}

/// @nodoc
class _$FloatingDaangnButtonStateCopyWithImpl<$Res,
        $Val extends FloatingDaangnButtonState>
    implements $FloatingDaangnButtonStateCopyWith<$Res> {
  _$FloatingDaangnButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FloatingDaangnButtonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isSmall = null,
  }) {
    return _then(_value.copyWith(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmall: null == isSmall
          ? _value.isSmall
          : isSmall // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloatingDaangnButtonStateImplCopyWith<$Res>
    implements $FloatingDaangnButtonStateCopyWith<$Res> {
  factory _$$FloatingDaangnButtonStateImplCopyWith(
          _$FloatingDaangnButtonStateImpl value,
          $Res Function(_$FloatingDaangnButtonStateImpl) then) =
      __$$FloatingDaangnButtonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExpanded, bool isSmall});
}

/// @nodoc
class __$$FloatingDaangnButtonStateImplCopyWithImpl<$Res>
    extends _$FloatingDaangnButtonStateCopyWithImpl<$Res,
        _$FloatingDaangnButtonStateImpl>
    implements _$$FloatingDaangnButtonStateImplCopyWith<$Res> {
  __$$FloatingDaangnButtonStateImplCopyWithImpl(
      _$FloatingDaangnButtonStateImpl _value,
      $Res Function(_$FloatingDaangnButtonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FloatingDaangnButtonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isSmall = null,
  }) {
    return _then(_$FloatingDaangnButtonStateImpl(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmall: null == isSmall
          ? _value.isSmall
          : isSmall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FloatingDaangnButtonStateImpl implements _FloatingDaangnButtonState {
  _$FloatingDaangnButtonStateImpl(
      {required this.isExpanded, required this.isSmall});

  factory _$FloatingDaangnButtonStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FloatingDaangnButtonStateImplFromJson(json);

  @override
  final bool isExpanded;
  @override
  final bool isSmall;

  @override
  String toString() {
    return 'FloatingDaangnButtonState(isExpanded: $isExpanded, isSmall: $isSmall)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloatingDaangnButtonStateImpl &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isSmall, isSmall) || other.isSmall == isSmall));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isExpanded, isSmall);

  /// Create a copy of FloatingDaangnButtonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FloatingDaangnButtonStateImplCopyWith<_$FloatingDaangnButtonStateImpl>
      get copyWith => __$$FloatingDaangnButtonStateImplCopyWithImpl<
          _$FloatingDaangnButtonStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FloatingDaangnButtonStateImplToJson(
      this,
    );
  }
}

abstract class _FloatingDaangnButtonState implements FloatingDaangnButtonState {
  factory _FloatingDaangnButtonState(
      {required final bool isExpanded,
      required final bool isSmall}) = _$FloatingDaangnButtonStateImpl;

  factory _FloatingDaangnButtonState.fromJson(Map<String, dynamic> json) =
      _$FloatingDaangnButtonStateImpl.fromJson;

  @override
  bool get isExpanded;
  @override
  bool get isSmall;

  /// Create a copy of FloatingDaangnButtonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FloatingDaangnButtonStateImplCopyWith<_$FloatingDaangnButtonStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
