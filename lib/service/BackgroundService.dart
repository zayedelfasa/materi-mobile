import 'package:workmanager/workmanager.dart';

class BackgroundService {
  static callbackDispatcher() {
    Workmanager().executeTask((taskName, inputData) {
     print('backgroundTask Process Started: $taskName');
      // if(taskName == "backgroundTask") {
      //   print('backgroundTask Process Started: $taskName');
      // }
      return Future.value(true);
    });
  }
}
