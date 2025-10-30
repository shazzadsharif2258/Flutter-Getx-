import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_new/example_page.dart';
import 'package:getx_learn_new/home_screen.dart';
import 'package:getx_learn_new/image_page.dart';
import 'package:getx_learn_new/languages.dart';
import 'package:getx_learn_new/login_page.dart';
import 'package:getx_learn_new/screen_one.dart';
import 'package:getx_learn_new/test_page.dart';
import 'package:getx_learn_new/test_two.dart';
import 'package:getx_learn_new/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const LoginPage(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(
          name: '/screenone',
          page: () => ScreenOne(),
        ),
        GetPage(name: '/third', page: () => ThirdScreen()),
      ],
    );
  }
}
