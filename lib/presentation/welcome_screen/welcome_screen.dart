import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/image_manager.dart';
import 'package:enhanced_elearning/core/utill/navigation.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/core/widgets/default_text_button.dart';
import 'package:enhanced_elearning/presentation/get_start_screen/get_start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageManager.welcome), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Image.asset(ImageManager.oranos),
              Column(
                children: [
                  SizedBox(
                      width: 0.8.sw,
                      child: DefaultTextButton(
                          title: 'Get Started',
                          onPressed: () {
                            navigateTo(
                                context: context,
                                screen: const GetStartScreen());
                          })),
                  SizedBox(
                    height: SizeManager.h10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Do you have an account?',
                        style: StyleManager.hintStyle(
                            color: ColorManager.blackColor),
                      ),
                      SizedBox(
                        width: SizeManager.w10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'SignIn',
                          style: StyleManager.hintStyle(
                              color: ColorManager.blueColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeManager.h10,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
