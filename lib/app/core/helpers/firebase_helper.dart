// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   await AwesomeNotifications().createNotificationFromJsonData(message.data);
// }

// configureFirebase() async {
//   await AwesomeNotifications().initialize(
//       // set the icon to null if you want to use the default app icon
//       'resource://drawable/app_notification_icon',
//       [
//         NotificationChannel(
//             channelKey: 'basic_channel',
//             channelName: 'Basic notifications',
//             channelDescription: 'Notification channel for basic tests',
//             defaultColor: const Color(0xFF9D50DD),
//             ledColor: Colors.white)
//       ]);

//   // Workmanager.initialize(
//   //   callbackDispatcher,
//   // isInDebugMode: true,
//   // );
//   // Workmanager.registerPeriodicTask(
//   //   "2",
//   //   "simplePeriodicTask",
//   //   frequency: Duration(minutes: 15),
//   // );
//   await Firebase.initializeApp();
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
//     if (!isAllowed) {
//       // Insert here your friendly dialog box before call the request method
//       // This is very important to not harm the user experience
//       AwesomeNotifications().requestPermissionToSendNotifications();
//     }
//   });
//   if (!kIsWeb) {
//     // channel = const AndroidNotificationChannel(
//     //   'high_importance_channel', // id
//     //   'High Importance Notifications', // title
//     //   'This channel is used for important notifications.', // description
//     //   importance: Importance.high,
//     // );

//     // flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//     /// Create an Android Notification Channel.
//     ///
//     /// We use this channel in the `AndroidManifest.xml` file to override the
//     /// default FCM channel to enable heads up notifications.
//     // await flutterLocalNotificationsPlugin
//     //     .resolvePlatformSpecificImplementation<
//     //         AndroidFlutterLocalNotificationsPlugin>()
//     //     ?.createNotificationChannel(channel);

//     /// Update the iOS foreground notification presentation options to allow
//     /// heads up notifications.
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }

//   var settings = await FirebaseMessaging.instance.requestPermission(
//     alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: true,
//     sound: true,
//   );

//   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//     print('User granted permission');
//   } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//     print('User granted provisional permission');
//   } else {
//     print('User declined or has not accepted permission');
//   }
// }

// /// Create a [AndroidNotificationChannel] for heads up notifications
// // late AndroidNotificationChannel channel;

// /// Initialize the [FlutterLocalNotificationsPlugin] package.
// // late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

// // void callbackDispatcher() {
// //   Workmanager.executeTask((task, inputData) {
// //     LocalNotifyManager().showNotification();
// //     return Future.value(true);
// //   });
// // }
