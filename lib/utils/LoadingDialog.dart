import 'package:flutter/material.dart';

class LoadingDialog {
  static void show(BuildContext context, {String? message = "加载中..."}) {
    // 显示加载弹窗
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(color: Colors.black),
                SizedBox(height: 10),
                Text(
                  message ?? "加载中...",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void hide(BuildContext context) {
    // 隐藏加载弹窗
    Navigator.pop(context);
  }
}
