import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/pages/home/index.dart';
import 'package:flutter/material.dart';

import 'package:hook_up_rent/pages/login.dart';
import 'package:hook_up_rent/pages/not_found.dart';
import 'package:hook_up_rent/pages/register.dart';
import 'package:hook_up_rent/pages/room_detail/index.dart';

final router = FluroRouter();

class Routes {
//1.定义路由名称
  static String login = "/login";
  static String home = '/';
  static String notfound = '/notfound';
  static String roomDetail = '/room/:roomId';
  static String register = '/register/';
//2.定义路由处理函数
  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });

  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static Handler _notFoundHandlerHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NotFoundPage();
  });
  static Handler _roomDetailHandlerHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId:params['roomId'][0]);
  });
  static Handler _registerHandlerHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });

//3.关联路由和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(notfound, handler: _notFoundHandlerHandler);
    router.define(roomDetail, handler: _roomDetailHandlerHandler);
    router.define(register, handler: _registerHandlerHandler);
  }

}
