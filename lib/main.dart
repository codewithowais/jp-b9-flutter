import 'package:facebook/views/custom_colum_view.dart';
import 'package:facebook/views/dashboard_view.dart';
import 'package:facebook/views/home_view.dart';
import 'package:facebook/views/login_view.dart';
import 'package:facebook/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
