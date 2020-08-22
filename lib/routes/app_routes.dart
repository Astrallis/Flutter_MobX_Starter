import 'package:flutter_mobX_boilerplate_and_structure/screens/landing/landing.dart';
import 'package:flutter/material.dart';

enum AppRoute { LANDING }

extension StringValues on AppRoute {
  String get id => const {AppRoute.LANDING: 'landing'}[this];

  Widget get screen => {AppRoute.LANDING: Landing()}[this];
}

Map<String, WidgetBuilder> getRoutes() {
  return {AppRoute.LANDING.id: (context) => AppRoute.LANDING.screen};
}
