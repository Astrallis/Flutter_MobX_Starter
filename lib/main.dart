import 'package:flutter/material.dart';
import 'package:flutter_mobX_boilerplate_and_structure/app_routes.dart';
import 'package:flutter_mobX_boilerplate_and_structure/utils/sizing/size_config.dart';
import 'package:flutter_mobX_boilerplate_and_structure/utils/theme/app_theme.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme(context).getLightThemeData(),
                  darkTheme: AppTheme(context).getDarkThemeData(),
                  initialRoute: AppRoute.LANDING.id,
                  routes: getRoutes(),
                );
          }
        );
      },
    );
  }
}