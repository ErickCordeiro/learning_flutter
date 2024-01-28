import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/app_controller.dart';
import 'package:flutter_application_1/pages/category/category.dart';
import 'package:flutter_application_1/pages/home/home.dart';
import 'package:flutter_application_1/pages/login/login.dart';
import 'package:flutter_application_1/pages/recovery/recovery.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/recovery': (context) => RecoveryPage(),
            '/home': (context) => HomePage(),
            '/category': (context) => CategoryPage(),
          },
        );
      },
    );
  }
}
