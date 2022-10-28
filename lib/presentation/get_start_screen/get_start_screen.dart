import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/image_manager.dart';
import 'package:enhanced_elearning/core/utill/navigation.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/core/widgets/default_text_button.dart';
import 'package:enhanced_elearning/presentation/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 220.r,
              width: 220.r,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image.asset(
                      ImageManager.path107,
                      height: 200.r,
                      width: 200.r,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 8.w),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: ColorManager.blackColor),
                            children: [
                          const TextSpan(text: 'Hi, My name is '),
                          TextSpan(
                              text: ' Oranobot\n',
                              style: StyleManager.labelStyleBold(
                                  color: ColorManager.blackColor)),
                          const TextSpan(
                              text:
                                  'I will always be there to help and assist you.\n\nSay Start To go to Next.'),
                        ])),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: SizeManager.h10,
          ),
          Column(
            children: [
              Image.asset(ImageManager.bot),
              SizedBox(
                height: SizeManager.h10,
              ),
              SizedBox(
                  width: 150.w,
                  child: DefaultTextButton(
                      title: 'Next',
                      onPressed: () {
                        navigateTo(context: context, screen: ChatScreen());
                      })),
            ],
          ),
          SizedBox(
            height: SizeManager.h20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.language),
              SizedBox(
                width: SizeManager.w10,
              ),
              const Text('English'),
            ],
          )
        ],
      )),
    );
  }
}
