// ignore_for_file: avoid_print

import 'package:fast_app_base/basic/app.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FcmManager {
  static void requestPermission() {
    FirebaseMessaging.instance.requestPermission();
  }

  static void init() async {
    if (await FirebaseMessaging.instance.getToken() == null) {
      return;
    }
    final token = await FirebaseMessaging.instance.getToken();
    print(token);

    // * Foreground messages
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        print('Got a message whilst in the foreground!');
        print('Message data: ${message.data}');

        if (message.notification != null) {
          print('Message also contained a notification: ${message.notification}');
          App.scaffoldMessengerKey.currentState?.showSnackBar(
            SnackBar(
              content: (message.notification!.title ?? '알림').text.make(),
              action: SnackBarAction(
                label: 'Go',
                onPressed: () {
                  print('------------------------------------------');
                  print('snackbar go tapped');
                  print('------------------------------------------');
                  App.navigatorkey.currentContext?.go(message.data['deepLinkTest']);
                },
              ),
            ),
          );
        }
      },
    );

    // * Background messages
    @pragma('vm:entry-point')
    Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
      // If you're going to use other Firebase services in the background, such as Firestore,
      // make sure you call `initializeApp` before using other Firebase services.
      await Firebase.initializeApp();

      print("Handling a background message: ${message.messageId}");
    }

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }
}
