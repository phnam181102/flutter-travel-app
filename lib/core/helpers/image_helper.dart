import 'package:flutter/material.dart';

class ImageHelper {
  static Widget loadFromAsset(String imageFilePath,
      {double? width,
      double? height,
      BorderRadius? radius,
      BoxFit? fit,
      Color? tintcolor,
      Alignment? alignment}) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.zero,
      child: Image.asset(
        imageFilePath,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        color: tintcolor,
        alignment: alignment ?? Alignment.center,
      ),
    );
  }
}
