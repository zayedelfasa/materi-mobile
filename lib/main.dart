import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/route_manager.dart';
import 'package:kelas_widget/AppBarSample.dart';
import 'package:kelas_widget/ContohConstraint/ContohConstraint.dart';
import 'package:kelas_widget/ContohGetx/view/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohGetx/view/Route/getx_route.dart';
import 'package:kelas_widget/ContohGetx/view/FormUser/list_user_getx.dart';
import 'package:kelas_widget/ContohLogin/MainApp.dart';
import 'package:kelas_widget/ContohProvider/View/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohProvider/View/FormLogin/login.dart';
import 'package:kelas_widget/ContohProvider/View/Route/route_class.dart';
import 'package:kelas_widget/ContohProvider/model/login.dart';
import 'package:kelas_widget/ContohProvider/state/state_login.dart';
import 'package:kelas_widget/service/BackgroundService.dart';
import 'package:kelas_widget/service/NotificationService.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

// void main() {
//   runApp(ContohConstraint());
// }

// contoh provider
// void main() {
//   runApp(MultiProvider(
//     providers: [ListenableProvider(create: (c) => LoginState())],
//     child: MainRoute(),
//   ));
// }

// contoh GetX
// void main() {
//   runApp(RouteGetx());
// }

void main() {
  runApp(MaterialApp(
    home: ListUserGetx(),
  ));
}

callbackdispatcher() {
  
    Workmanager().executeTask((taskName, inputData) {
     print('backgroundTask Process Started: $taskName');
      // if(taskName == "backgroundTask") {
      //   print('backgroundTask Process Started: $taskName');
      // }
      // code fetch data 
      return Future.value(true);
    });
  
}

// contoh lokal notifikasi dan contoh background process
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await _flutterLocalNotificationsPlugin.initialize(_initializationSettings, onSelectNotification: getPayload);
//   NotificationService().init();
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _notifLaunch();
    _notifLaunchByClass();
  }

  _notifLaunchByClass() async {
    NotificationAppLaunchDetails notificationAppLaunchDetails =
        await NotificationService()
            .flutterLocalNotificationsPlugin
            .getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails.didNotificationLaunchApp ?? false) {
      String payload = notificationAppLaunchDetails.payload;
      print(payload);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Notifikasi & BG Service"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: _onPressNotifClass,
                child: Text("Tampilkan notifikasi"),
              ),

              ElevatedButton(
                onPressed: _onStartRunning,
                child: Text("Initialize BG Service"),
              ),

              ElevatedButton(
                onPressed: _onPressBGService,
                child: Text("Jalankan BG Service"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onPressNotifClass() {
    NotificationService().notificationShow();
  }

  _onStartRunning() async {
    await Workmanager().initialize(callbackdispatcher, isInDebugMode: true);
  }

  _onPressBGService() async {
    // lakukan background service
    Workmanager().registerOneOffTask("${Random().nextInt(99)}", "backgroundTask", inputData: {"id": "1"});
    // Workmanager().registerPeriodicTask("id1", "BGJob", frequency: Duration(hours: 1));
  }
}

class CupertinoApps extends StatefulWidget {
  const CupertinoApps({Key key}) : super(key: key);

  @override
  _CupertinoAppsState createState() => _CupertinoAppsState();
}

class _CupertinoAppsState extends State<CupertinoApps> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Store'),
        ),
        child: GestureDetector(
          child: Container(
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
