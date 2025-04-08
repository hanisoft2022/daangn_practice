import 'package:fast_app_base/common/common/cli_common.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/data/etc/simple_result.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/screen/notification/dummy/notification_dummies.dart';
import 'package:fast_app_base/screen/notification/entity/daangn_notification.dart';

class DaangnApi {
  // 싱글톤 인스턴스를 저장할 정적 변수
  static final DaangnApi _instance = DaangnApi._internal();

  // 팩토리 생성자: 항상 같은 인스턴스를 반환
  factory DaangnApi() {
    return _instance;
  }

  // 내부 생성자: 실제 초기화 작업 수행
  DaangnApi._internal();

  Future<SimpleResult<List<DaangnNotification>, ApiError>> getNotifications() async {
    await sleepAsync(3000.ms);
    return SimpleResult.success(notificationList);
  }
}
