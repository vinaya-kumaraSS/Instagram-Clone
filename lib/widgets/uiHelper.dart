import 'package:flutter/material.dart';

class Uihelper {
  static customImage({
    required String image,
    required double height,
    required double width,
  }) {
    return Image.asset("assets/images/$image", height: height, width: width);
  }

  static customTextField({
    required String hintText,
    required bool isPassword,
    required TextEditingController controller,
  }) {
    return Container(
      height: 45,
      width: 340,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFFFFFFFF),
            fontFamily: 'regular',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Color(0x33FFFFFF), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1),
          ),
        ),
      ),
    );
  }

  static hyperLinkText({
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required Color fontColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  static customButton({
    required VoidCallback onPressed,
    required Color btnColor,
    required String btnText,
    required double btnWidth,
    required double btnHeight,
    required Color textColor,
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        fixedSize: Size(btnWidth, btnHeight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: () {
        print("Login button pressed");
      },
      child: Text(
        btnText,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'regular',
        ),
      ),
    );
  }
}
