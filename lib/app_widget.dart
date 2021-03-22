import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.deepOrangeAccent.shade200,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.deepOrangeAccent.shade200,
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          },
        );
      },
    );
  }
}
