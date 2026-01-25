import 'package:facebook/firebase_options.dart';
import 'package:facebook/views/custom_colum_view.dart';
import 'package:facebook/views/dashboard_view.dart';
import 'package:facebook/views/bottom_sheet_template_view.dart';
import 'package:facebook/views/home_view.dart';
import 'package:facebook/views/insta_clone_bottom.dart';
import 'package:facebook/views/login_view.dart';
import 'package:facebook/views/signup_view.dart';
import 'package:facebook/views/splash_view.dart';
import 'package:facebook/views/wallet_home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure the binding is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignupView());
  }
}
