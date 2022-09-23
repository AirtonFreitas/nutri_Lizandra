import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.popAndPushNamed(context, 'home');
    });
    return Scaffold(backgroundColor: Colors.white,
        body: Center(
      child: Image.asset('assets/logo_lizandra.png',width: MediaQuery.of(context).size.width/2,),
    ));
  }
}
