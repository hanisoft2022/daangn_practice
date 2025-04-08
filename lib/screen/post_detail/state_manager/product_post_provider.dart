import 'package:fast_app_base/data/network/dummy/daangn_api.dart';
import 'package:fast_app_base/screen/notification/entity/daangn_notification.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productPostProvider = FutureProvider.family<List<DaangnNotification>, int>(
  (ref, id) async {
    final result = await DaangnApi().getNotifications();
    return result.successData;
  },
);
