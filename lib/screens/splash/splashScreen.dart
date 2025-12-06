import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/uiHelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Uihelper.customImage(image: "logo.png"),
            SizedBox(height: 20),
            Uihelper.customImage(image: "Instagram Logo.png"),
          ],
        ),
      ),
    );
  }
}
