import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/domain/entities/feature.dart';
import 'package:enhanced_elearning/presentation/home_screen/cubit/home_cubit.dart';
import 'package:enhanced_elearning/presentation/home_screen/list_of_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleList extends StatelessWidget {
  const TitleList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: StyleManager.labelStyleMedium(
            color: ColorManager.blackColor,
          ),
        ),
        InkWell(
            onTap: () {
              List<Feature> features = HomeCubit.get(context).features;
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  )),
                  builder: (_) {
                    return Padding(
                        padding: EdgeInsets.all(10.r),
                        child: ListFeatures(features: features));
                  });
            },
            child: const Icon(Icons.more_horiz)),
      ],
    );
  }
}
