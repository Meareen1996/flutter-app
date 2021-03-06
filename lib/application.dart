import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/routes.dart';
class Application extends StatelessWidget {
  // const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
   
    Routes.configureRoutes(router);
    return MaterialApp(
      theme:ThemeData(primaryColor:Color(0xff40af3f)),
      onGenerateRoute: router.generator
    );
  }
}