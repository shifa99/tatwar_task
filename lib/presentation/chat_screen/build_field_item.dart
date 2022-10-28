import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildFieldItem extends StatelessWidget {
  const BuildFieldItem(
      {Key? key,
      required this.onChange,
      required this.selected,
      required this.title})
      : super(key: key);
  final bool selected;
  final String title;
  final Function onChange;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        value: selected,
        activeColor: ColorManager.primaryColor,
       contentPadding: EdgeInsets.zero,
        checkboxShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Text(title,
            style: StyleManager.labelStyleMedium(
              color: ColorManager.blackColor,
            )),
        onChanged: (newValue) {
          onChange();
        });
  }
}
