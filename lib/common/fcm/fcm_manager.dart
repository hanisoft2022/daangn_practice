import 'package:firebase_messaging/firebase_messaging.dart';

class FcmManager {
  static void requestPermission() {
    FirebaseMessaging.instance.requestPermission();
  }

  static void getToken() async {
    if (await FirebaseMessaging.instance.getToken() == null) {
      return;
    }
    final token = await FirebaseMessaging.instance.getToken();
    print('-----------------------------------------');
    print(token);
  }
}
