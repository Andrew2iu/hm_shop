// 管理路由
import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Login/index.dart';
import 'package:hm_shop/pages/Main/index.dart';

// 返回app根组件
Widget getRootWidget() {
  return MaterialApp(
    // 初始路由
    initialRoute: '/',
    // 命名路由
    routes: getRootRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    '/': (context) => MainPage(), //主页
    '/login': (context) => LoginPage(), //登录页
  };
}
