import 'package:flutter/material.dart';
import 'package:flutter_fiberbase_login/Splash/splash.dart';
import 'package:flutter_fiberbase_login/login/login.dart';
import 'package:flutter_fiberbase_login/signup/signup.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
