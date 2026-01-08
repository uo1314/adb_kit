library adbutil;

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AdbUtil {
  static const MethodChannel _channel = MethodChannel('com.nightmare.adbutil');
  static final List<Function> _listeners = [];

  static void addListener(Function listener) {
    _listeners.add(listener);
  }

  static void removeListener(Function listener) {
    _listeners.remove(listener);
  }

  static void setLibraryPath(String path) {
    // Placeholder
  }

  static void startPoolingListDevices(Function callback) {
    // Placeholder
  }

  static void stopPoolingListDevices() {
    // Placeholder
  }

  static Future<AdbResult> connectDevices(String address) async {
    return AdbResult(0, '');
  }

  static Future<void> disconnectDevices(String deviceId) async {
    // Placeholder
  }

  static Future<void> reconnectDevices(String deviceId) async {
    // Placeholder
  }

  static Future<int?> getForwardPort(String deviceId) async {
    return null;
  }

  static Future<void> pushFile(String deviceId, String localPath, String remotePath) async {
    // Placeholder
  }
}

class AdbResult {
  final int exitCode;
  final String stdout;
  AdbResult(this.exitCode, this.stdout);
}

class ADBException implements Exception {
  final String message;
  ADBException(this.message);
  @override
  String toString() => message;
}

class Tasks {
  final List<dynamic> datas;
  Tasks({required this.datas});
}

// Global variables
String get adb => 'adb';
Map<String, String> adbEnvir() => {};

Future<String> execCmd(String command) async {
  return '';
}

Future<String> asyncExec(String command, Map<String, String> env) async {
  return '';
}

Future<void> execCmd2(List<String> args) async {
  // Placeholder
}
