import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/domain/entities/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultListTile extends StatelessWidget {
  const DefaultListTile({Key? key, required this.feature}) : super(key: key);
  final Feature feature;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: BorderSide(
            color: ColorManager.grayColor,
            width: 0.5,
          )),
      child: ListTile(
        onTap: () {},
        leading: Image.asset(feature.image),
        title: Text(
          feature.title,
          style: StyleManager.labelStyleMedium(
            color: ColorManager.blackColor,
          ),
        ),
        subtitle: Text(
          feature.subTitle,
          style: StyleManager.hintStyle(
              color: ColorManager.blackColor.withOpacity(0.7)),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
