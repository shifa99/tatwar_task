import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubbleRecieve extends StatelessWidget {
  const BubbleRecieve({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(child: Container()),
        Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: ColorManager.primaryColor,
              ),
              child: Text(
                message,
                style: StyleManager.labelStyleMedium(
                    color: ColorManager.whiteColor),
              ),
            )),
        SizedBox(
          width: SizeManager.w10,
        ),
        Icon(
          Icons.done_all,
          color: ColorManager.primaryColor,
        ),
      ],
    );
  }
}
