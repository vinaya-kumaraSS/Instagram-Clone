import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/uiHelper.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(
              image: "Instagram Logo.png",
              height: 50,
              width: 180,
            ),
            SizedBox(height: 20),
            Uihelper.customTextField(
              hintText: "Email",
              isPassword: false,
              controller: emailController,
            ),
            SizedBox(height: 15),
            Uihelper.customTextField(
              hintText: "Password",
              isPassword: true,
              controller: passwordController,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Uihelper.hyperLinkText(
                    text: "Forgot password?",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontColor: Color(0XFF3797EF),
                    onTap: () {
                      print("Forgot password tapped");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Uihelper.customButton(
              btnColor: Color(0XFF3797EF),
              btnWidth: 340,
              btnHeight: 45,
              btnText: "Log in",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              textColor: Color(0XFFFFFFFF),
              onPressed: () {
                print("Log in button pressed");
              },
            ),
            SizedBox(height: 20),
            Row(children: [Icon(Icons.facebook_outlined, color: Colors.amber)]),
          ],
        ),
      ),
    );
  }
}
