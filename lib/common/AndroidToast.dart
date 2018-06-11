import 'package:flutter/services.dart';

class Toast {
  static const platform = const MethodChannel('flutter/toast');

  static show(String msg) async {
    try {
      await platform.invokeMethod("showToast", {"msg": msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }
}
