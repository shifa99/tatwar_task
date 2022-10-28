import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlineItem extends StatelessWidget {
  const OnlineItem({Key? key,required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70.r,
          height: 70.r,
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundColor: ColorManager.grayColor,
              ),
              Positioned(
                top: 8.r,
                right: 2.r,
                child: CircleAvatar(
                  radius: 5.r,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeManager.h10,
        ),
        Text(name,
            style: StyleManager.hintStyle(
              color: ColorManager.grayColor,
            )),
      ],
    );
  }
}
