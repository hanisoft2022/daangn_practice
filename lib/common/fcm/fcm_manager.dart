// ignore_for_file: avoid_print

import 'package:fast_app_base/basic/app.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FcmManager {
  static void requestPermission() async {
    await FirebaseMessaging.instance.requestPermission();
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
    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        App.navigatorkey.currentContext?.go(message.data['deepLinkTest']);
      },
    );

    // * Terminated messages
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        App.navigatorkey.currentContext?.go(initialMessage.data['deepLinkTest']);
      });
    }
  }
}
