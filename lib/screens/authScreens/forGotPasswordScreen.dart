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
            TextField(
              controller: emailOrUsernameController,
              obscureText: false,
              cursorColor: Color(0xFFFFFFFF),
              decoration: InputDecoration(
                hintText: "Email or username",
                labelText: "Email or username",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'regular',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color.fromARGB(6, 48, 48, 48), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
