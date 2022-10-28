import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubbleSend extends StatelessWidget {
  const BubbleSend({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.grayColor,
          radius: 17.r,
          child: Icon(
            Icons.message_rounded,
            color: ColorManager.primaryColor,
          ),
        ),
        SizedBox(
          width: SizeManager.w10,
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: ColorManager.grayColor,
            ),
            child: Text(
              message,
              style:
                  StyleManager.labelStyleMedium(color: ColorManager.blackColor),
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
