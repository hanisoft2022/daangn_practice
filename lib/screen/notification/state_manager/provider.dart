import 'package:fast_app_base/data/network/dummy/daangn_api.dart';
import 'package:fast_app_base/screen/notification/entity/daangn_notification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final notificationEditModeProvider = StateProvider<bool>((ref) => false);

final remoteNotificationProvider = FutureProvider(
  (ref) async {
    final result = await DaangnApi().getNotifications();
    return result.successData;
  },
);

final notificationProvider = StateProvider<List<DaangnNotification>?>((ref) {
  final list = ref.watch(remoteNotificationProvider);
  if (list.hasValue) {
    // ! 에러 시 value 대신 requireValue 사용
    return list.value;
  }
  return null;
});
