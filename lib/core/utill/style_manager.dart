import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/font_manager.dart';
import 'package:flutter/cupertino.dart';

class StyleManager {
  static TextStyle _textStyle({
    required double fontSize,
    Color? textColor,
  }) =>
      TextStyle(
        fontSize: fontSize,
        color: textColor ?? ColorManager.whiteColor,
      );
  static TextStyle labelStyleMedium({Color?color}) {
    return _textStyle(
      textColor: color,
      fontSize: FontManager.labelSize,
    );
  }
  static TextStyle labelStyleBold({Color?color}) {
    return _textStyle(
      fontSize: FontManager.labelSize,
      textColor: color,
    ).copyWith(fontWeight: FontWeight.bold);
  }

  static TextStyle hintStyle({Color? color}) {
    return _textStyle(
      fontSize: FontManager.hintSize,
      textColor: color,
    );
  }
}
