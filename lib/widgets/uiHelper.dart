import 'package:flutter/material.dart';

class Uihelper {
  static customImage({required String image, double? height, double? width}) {
    return Image.asset("assets/images/$image", height: height, width: width);
  }
}
