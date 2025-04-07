import 'package:fast_app_base/screen/notification/entity/notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daangn_notification.freezed.dart';

@freezed
class DaangnNotification with _$DaangnNotification {
  const factory DaangnNotification(
    final NotificationType type,
    final String title,
    final String description,
    final DateTime time, {
    @Default(false) final bool isRead,
  }) = _DaangnNotification;
}
