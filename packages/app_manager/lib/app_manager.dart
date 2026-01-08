library app_manager;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppManager {
  static AppManager? _instance;
  static AppManager get globalInstance => _instance ??= AppManager._internal();

  AppManager._internal();

  static const MethodChannel _channel = MethodChannel('com.nightmare.app_manager');

  Future<dynamic> invokeMethod(String method, [dynamic arguments]) {
    return _channel.invokeMethod(method, arguments);
  }
}

class AppManagerPlugin {
  static void registerWith() {
    // Placeholder
  }
}

class AppChannel {
  final String port;
  AppChannel({required this.port});
}

class RemoteAppChannel {
  final int? port;
  RemoteAppChannel({this.port});
}

class AppPages {
  static const routes = [];
}

class CheckController {}
class IconController {}
class AppManagerController {}
class AppIconHeader {}
