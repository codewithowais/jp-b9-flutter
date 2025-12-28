import 'dart:async';

import 'package:facebook/views/login_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(builder: (context) => LoginView()),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 93, 93),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/images/bmw.png')],
      ),
    );
  }
}
