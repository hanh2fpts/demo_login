import 'package:demo_login/app.dart';
import 'package:demo_login/injection/injection.dart';
import 'package:demo_login/utils/app_config.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injection.init();
  await Injection.instance.allReady();
  AppConfig.configDev();
  runApp(const MyApp());
}
