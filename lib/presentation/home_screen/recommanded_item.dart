import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/domain/entities/person.dart';
import 'package:enhanced_elearning/presentation/home_screen/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommandedItem extends StatelessWidget {
  const RecommandedItem({Key? key, required this.person, required this.index})
      : super(key: key);
  final Person person;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (0.48).sw,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        border: Border.all(color: const Color(0xffCFD9DE)),
        boxShadow: [
          BoxShadow(
              offset: const Offset(-0.5, 0.5), color: ColorManager.grayColor),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            person.image,
            fit: BoxFit.fill,
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(6.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: SizeManager.w5,
                        ),
                        Text(
                          person.rate.toStringAsFixed(1),
                          style: StyleManager.hintStyle(
                            color: ColorManager.grayColor,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Icon(
                        person.fav ? Icons.favorite : Icons.favorite_border,
                        color: person.fav
                            ? ColorManager.grayColor
                            : ColorManager.blackColor,
                      ),
                      onTap: () {
                        HomeCubit.get(context).toggleFavRecommanded(index);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeManager.h10,
                ),
                Text(
                  person.name,
                  style: StyleManager.labelStyleMedium(
                    color: ColorManager.blackColor,
                  ),
                ),
                SizedBox(
                  height: SizeManager.h10,
                ),
                Text(
                  person.specialization,
                  style: StyleManager.hintStyle(
                    color: ColorManager.grayColor,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
