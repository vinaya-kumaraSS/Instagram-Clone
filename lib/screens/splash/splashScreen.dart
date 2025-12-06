import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/authScreens/loginScreen.dart';
import 'package:instagram_clone/widgets/uiHelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(image: "logo.png"),
            SizedBox(height: 10),
            Uihelper.customImage(image: "Instagram Logo.png"),
          ],
        ),
      ),
    );
  }
}
