import 'dart:convert';

import 'package:evenza/helpers/api/api_helper.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class FcmHelper {
  static void init(BuildContext context) async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings notificationSettings =
        await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.authorized) {
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'mychannel',
        'title',
        importance: Importance.max,
      );

      final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
          FlutterLocalNotificationsPlugin();

      flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
            android: AndroidInitializationSettings('@drawable/logo'),
            iOS: DarwinInitializationSettings()),
        // ignore: avoid_print
        onDidReceiveNotificationResponse: (details) => print(details.payload),
      );

      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        // ignore: avoid_print
        print(message.toMap());
        if (message.notification == null) {
          return;
        }

        RemoteNotification notification = message.notification!;

        if (notification.android != null) {
          BigPictureStyleInformation? bigPictureStyleInformation;
          if (notification.android!.imageUrl != null) {
            final image = await NotificationRepository.getImage(
                notification.android!.imageUrl!);
            bigPictureStyleInformation = BigPictureStyleInformation(
                ByteArrayAndroidBitmap.fromBase64String(base64Encode(image)));
          }
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(channel.id, channel.name,
                  styleInformation: bigPictureStyleInformation),
            ),
            payload: message.data.toString(),
          );
        }
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        // do something with message
        // ignore: avoid_print
        print(message.sentTime);
      });

      messaging.getInitialMessage().then((RemoteMessage? message) {
        // ignore: avoid_print
        print(message?.data);
        if (message == null) {
          return;
        }

        // do something with message
      });
    }
  }

  static Future<String?> createToken() async {
    //TODO:: check if it's working on production
    return await FirebaseMessaging.instance
        .getToken(
            vapidKey:
                'BKK-oODoP8dtH0QjV79XGcBnA5RBMK2-QY8P5tv2rjxzhbLTKO2_7x1HJU3cB6zroLzqRHaS8y3VgZUMlfwTmNg')
        .then((value) {
      print('fcm is $value');
      return value;
    });
  }

  static void deleteToken() async =>
      await FirebaseMessaging.instance.deleteToken();

  static void subscribeToAll() async {
    await FirebaseMessaging.instance.subscribeToTopic('all');
  }
}

class NotificationRepository {
  static Future<List<int>> getImage(String imageUrl) async {
    final response = await http.get(
      Uri.parse(imageUrl),
      headers: {'accept': 'application/json'},
    );
    return response.bodyBytes;
  }
}
