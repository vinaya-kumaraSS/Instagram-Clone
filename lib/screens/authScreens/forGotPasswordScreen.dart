import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/uiHelper.dart';

class Forgotpasswordscreen extends StatelessWidget {
  const Forgotpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrUsernameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find yout account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text("Enter your email or username."),
            SizedBox(height: 5),
            Uihelper.hyperLinkText(
              text: "Can't reset your password?",
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontColor: Color(0XFF3797EF),
              onTap: () {},
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 55,
                  width: 350,
                  child: TextField(
                    controller: emailOrUsernameController,
                    obscureText: false,
                    cursorColor: Color(0xFFFFFFFF),
                    decoration: InputDecoration(
                      hintText: "Email or username",
                      labelText: "Email or username",
                      labelStyle: TextStyle(color: Color(0Xffffffff)),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'regular',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.red, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Uihelper.customButton(
                  onTap: () {
                    print("Forgot Password");
                  },
                  btnColor: Color(0XFF3797EF),
                  btnText: "Continue",
                  btnWidth: 350,
                  btnHeight: 45,
                  textColor: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 30),
                Text("Find by mobile number"),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                    bottom: 10,
                  ),
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
                Uihelper.customButtonWithIcon(
                  borderColor: Color.fromARGB(15, 255, 255, 255),
                  leadingIcon: Icons.facebook,
                  iconColor: Color(0Xffffffff),
                  btnWidth: 450,
                  btnHeight: 45,
                  btnText: "Log in with Facebook",
                  btnColor: Colors.transparent,
                  textColor: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  btnRadius: 24,
                  btnTextFamily: 'regular',
                  onPressed: () {
                    print("facebook login pressed");
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
