import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/navigation.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/presentation/chat_screen/build_field_item.dart';
import 'package:enhanced_elearning/presentation/chat_screen/cubit/chat_scren_cubit.dart';
import 'package:enhanced_elearning/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfFields extends StatelessWidget {
  const ListOfFields({Key? key, required this.chatScrenCubit})
      : super(key: key);
  final ChatScrenCubit chatScrenCubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...chatScrenCubit.fields
                .map((e) => BuildFieldItem(
                    title: e,
                    onChange: () {
                      chatScrenCubit.addField(e);
                    },
                    selected: chatScrenCubit.selectedFields.contains(e)))
                .toList(),
            InkWell(
              onTap: () {
                if (chatScrenCubit.selectedFields.isNotEmpty) {
                  chatScrenCubit.addMessage(chatScrenCubit.selectedFields
                      .map((e) => '$e ')
                      .toString());
                  chatScrenCubit.clearSelected();
                  navigateTo(context: context, screen: HomeScreen());
                }
              },
              child: Text(
                'Say Done, Or press send to apply',
                style: StyleManager.labelStyleMedium(
                  color: ColorManager.grayColor,
                ),
              ),
            )
          ]),
    );
  }
}
