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
        cursorColor: Color(0xFFFFFFFF),
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
    required VoidCallback onTap,
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
        onTap();
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

  static customButtonWithIcon({
    required IconData leadingIcon,
    required Color iconColor,
    required double btnWidth,
    required double btnHeight,
    required String btnText,
    required Color btnColor,
    required Color textColor,
    required double fontSize,
    required FontWeight fontWeight,
    required double btnRadius,
    required String btnTextFamily,
    required VoidCallback onPressed,
    Color? borderColor,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        fixedSize: Size(btnWidth, btnHeight),
        shape: RoundedRectangleBorder(
          side: borderColor != null
              ? BorderSide(color: borderColor)
              : BorderSide(color: btnColor),
          borderRadius: BorderRadius.all(Radius.circular(btnRadius)
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(leadingIcon, color: iconColor),
          SizedBox(width: 5),
          Text(
            "Log in with Facebook",
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontFamily: btnTextFamily,
            ),
          ),
        ],
      ),
      onPressed: () {
        onPressed();
      },
    );
  }
}
