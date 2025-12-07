import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/uiHelper.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  TextEditingController mobileORemailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customImage(
                image: "Instagram Logo.png",
                height: 50,
                width: 180,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: Text(
                  "Sign up to see photos and videos from your friends.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(149, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Uihelper.customButtonWithIcon(
                leadingIcon: Icons.facebook,
                iconColor: Color(0XFFFFFFFF),
                btnWidth: 340,
                btnHeight: 45,
                btnText: "Log in with Facebook",
                btnColor: Color(0XFF3797EF),
                textColor: Color(0XFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                btnRadius: 5,
                btnTextFamily: 'regular',
                onPressed: () {
                  print("Facebook login pressed");
                },
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Uihelper.customTextField(
                hintText: "Mobile Number or Email",
                isPassword: false,
                controller: mobileORemailController,
              ),
              SizedBox(height: 5),
              Uihelper.customTextField(
                hintText: "Password",
                isPassword: true,
                controller: passwordController,
              ),
              SizedBox(height: 5),
              Uihelper.customTextField(
                hintText: "Full Name",
                isPassword: false,
                controller: fullNameController,
              ),
              SizedBox(height: 5),
              Uihelper.customTextField(
                hintText: "Username",
                isPassword: false,
                controller: userNameController,
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 340,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "People who use our service may have uploaded your contact information to Instagram. ",
                        style: TextStyle(
                          color: Color.fromARGB(149, 255, 255, 255),
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: "Learn More",
                        style: TextStyle(
                          color: Color(0XFF3797EF),
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                print("Learn more tapped");
                              },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 300,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By signing up, you agree to our",
                        style: TextStyle(
                          color: Color.fromARGB(149, 255, 255, 255),
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: " Terms , Privacy Policy",
                        style: TextStyle(
                          color: Color(0XFF3797EF),
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms , Privacy Policy tapped");
                              },
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(
                          color: Color.fromARGB(149, 255, 255, 255),
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: "Cookies Policy",
                        style: TextStyle(
                          color: Color(0XFF3797EF),
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                print("Cookies Policy tapped");
                              },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Uihelper.customButton(
                btnColor: Color(0XFF3797EF),
                btnText: "Sign up",
                btnWidth: 340,
                btnHeight: 45,
                textColor: Color(0XFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                onTap: () {
                  print("signup button pressed");
                },
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Text("Have an account?"),
                  Uihelper.hyperLinkText(
                    text: "Log in",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontColor: Color(0XFF3797EF),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
