import 'package:flutter/material.dart';

class ToastUtils {
  static bool _isShow = false;
  static void showToast(BuildContext context, String? msg) {
    if (_isShow) {
      return;
    }
    ToastUtils._isShow = true;
    Future.delayed(Duration(seconds: 3), () {
      ToastUtils._isShow = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg ?? "加载成功", textAlign: TextAlign.center),
        width: 120,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
