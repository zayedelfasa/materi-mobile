import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  final AndroidNotificationDetails _androidNotificationDetails = AndroidNotificationDetails('notifapp', 'notifchannel', 'specialnotifchannel');

  get flutterLocalNotificationsPlugin => _flutterLocalNotificationsPlugin;
  
  Future<void> init() async {
    const AndroidInitializationSettings _androidInitializationSettings = AndroidInitializationSettings('app_icon');
    const IOSInitializationSettings _iosInitializationSettings = IOSInitializationSettings();
    
    const InitializationSettings _initializationSettings = InitializationSettings( android: _androidInitializationSettings, iOS: _iosInitializationSettings);
    // const AndroidNotificationDetails _androidNotificationDetails = AndroidNotificationDetails('notifapp', 'notifchannel', 'specialnotifchannel');
    
    // const NotificationDetails _notificationDetails = NotificationDetails(android: _androidNotificationDetails);
    await _flutterLocalNotificationsPlugin.initialize(_initializationSettings, onSelectNotification: getPayload);
  } 

  Future<dynamic> getPayload(String payload) async {
    print(payload);
  }  

  _getNotificationDetail() {
    final  NotificationDetails _notificationDetails = NotificationDetails(android: _androidNotificationDetails);
    return _notificationDetails;
  }

  Future<void> notificationShow() async {
    await _flutterLocalNotificationsPlugin.show(
      Random().nextInt(99), 
      "Aplikasi Notifikasi", 
      "Ini merupakan body notifikasi dari Aplikasi", 
      _getNotificationDetail(),
      payload: "INI CONTOH PAYLOAD");
  }
}