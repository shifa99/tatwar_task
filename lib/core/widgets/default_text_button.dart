import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  DefaultTextButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.colorButton})
      : super(key: key);
  final String title;
  Color? colorButton;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style:
            TextButton.styleFrom(backgroundColor: colorButton ?? Colors.teal),
        child: Text(
          title,
          style: StyleManager.labelStyleMedium(),
        ),
      ),
    );
  }
}
