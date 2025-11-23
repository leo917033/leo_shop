//管理路由
import 'package:flutter/material.dart';
import 'package:leo_shop_flutter/pages/Login/index.dart';
import 'package:leo_shop_flutter/pages/Main/index.dart';

Widget getRootWidget(){
  return MaterialApp(
    initialRoute: "/",
    routes: getRootRoutes(),
  );
}
Map<String, Widget Function(BuildContext)> getRootRoutes(){
  return {
    "/":(context) => MainPage(),//主頁路由
    "/login":(context) => LoginPage(),//登入路由
  };
}


