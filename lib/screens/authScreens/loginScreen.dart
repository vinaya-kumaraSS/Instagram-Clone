import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/authScreens/signupScreen.dart';
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
                print("Login button pressed");
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_outlined, color: Color(0XFF3797EF)),
                SizedBox(width: 5),
                Uihelper.hyperLinkText(
                  text: "Log in with Facebook",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontColor: Color(0XFF3797EF),
                  onTap: () {
                    print("facebook button clicked");
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: 132,
                    color: Color.fromARGB(15, 255, 255, 255),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFFFFFFF),
                      fontFamily: 'regular',
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 132,
                    color: Color.fromARGB(15, 255, 255, 255),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(149, 255, 255, 255),
                    fontFamily: 'regular',
                  ),
                ),
                SizedBox(width: 5),
                Uihelper.hyperLinkText(
                  text: "Sign up.",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontColor: Color(0XFF3797EF),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signupscreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
