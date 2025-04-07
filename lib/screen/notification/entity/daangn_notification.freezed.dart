// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daangn_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DaangnNotification {
  NotificationType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  /// Create a copy of DaangnNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DaangnNotificationCopyWith<DaangnNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaangnNotificationCopyWith<$Res> {
  factory $DaangnNotificationCopyWith(
          DaangnNotification value, $Res Function(DaangnNotification) then) =
      _$DaangnNotificationCopyWithImpl<$Res, DaangnNotification>;
  @useResult
  $Res call(
      {NotificationType type,
      String title,
      String description,
      DateTime time,
      bool isRead});
}

/// @nodoc
class _$DaangnNotificationCopyWithImpl<$Res, $Val extends DaangnNotification>
    implements $DaangnNotificationCopyWith<$Res> {
  _$DaangnNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DaangnNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? time = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaangnNotificationImplCopyWith<$Res>
    implements $DaangnNotificationCopyWith<$Res> {
  factory _$$DaangnNotificationImplCopyWith(_$DaangnNotificationImpl value,
          $Res Function(_$DaangnNotificationImpl) then) =
      __$$DaangnNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationType type,
      String title,
      String description,
      DateTime time,
      bool isRead});
}

/// @nodoc
class __$$DaangnNotificationImplCopyWithImpl<$Res>
    extends _$DaangnNotificationCopyWithImpl<$Res, _$DaangnNotificationImpl>
    implements _$$DaangnNotificationImplCopyWith<$Res> {
  __$$DaangnNotificationImplCopyWithImpl(_$DaangnNotificationImpl _value,
      $Res Function(_$DaangnNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DaangnNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? time = null,
    Object? isRead = null,
  }) {
    return _then(_$DaangnNotificationImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DaangnNotificationImpl implements _DaangnNotification {
  const _$DaangnNotificationImpl(
      this.type, this.title, this.description, this.time,
      {this.isRead = false});

  @override
  final NotificationType type;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime time;
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'DaangnNotification(type: $type, title: $title, description: $description, time: $time, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaangnNotificationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, description, time, isRead);

  /// Create a copy of DaangnNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaangnNotificationImplCopyWith<_$DaangnNotificationImpl> get copyWith =>
      __$$DaangnNotificationImplCopyWithImpl<_$DaangnNotificationImpl>(
          this, _$identity);
}

abstract class _DaangnNotification implements DaangnNotification {
  const factory _DaangnNotification(final NotificationType type,
      final String title, final String description, final DateTime time,
      {final bool isRead}) = _$DaangnNotificationImpl;

  @override
  NotificationType get type;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get time;
  @override
  bool get isRead;

  /// Create a copy of DaangnNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaangnNotificationImplCopyWith<_$DaangnNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
