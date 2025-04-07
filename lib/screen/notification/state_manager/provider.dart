import 'package:fast_app_base/screen/notification/entity/daangn_notification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final notificationEditModeProvider = StateProvider<bool>((ref) => false);

final remoteNotificationProvider = FutureProvider((ref) => null);

final notificationProvider = StateProvider<List<DaangnNotification>?>((ref) => null);
