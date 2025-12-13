import 'package:flutter/material.dart';

class Forgotpasswordscreen extends StatelessWidget {
  const Forgotpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Find yout account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text("Enter your email or username"),
            ),
          ],
        ),
      ),
    );
  }
}
