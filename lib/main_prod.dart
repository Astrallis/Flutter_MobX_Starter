import 'package:flutter/widgets.dart';
import 'package:flutter_mobX_boilerplate_and_structure/app_environment.dart';

import 'main.dart';

void main(){
  AppEnvironment.setupEnv(Environment.prod);
  runApp(MyApp());
}