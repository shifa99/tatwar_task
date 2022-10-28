import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/image_manager.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/utill/style_manager.dart';
import 'package:enhanced_elearning/presentation/home_screen/cubit/home_cubit.dart';
import 'package:enhanced_elearning/presentation/home_screen/list_online_items.dart';
import 'package:enhanced_elearning/presentation/home_screen/list_recommanded.dart';
import 'package:enhanced_elearning/presentation/home_screen/title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration:
            BoxDecoration(border: Border.all(color: ColorManager.grayColor)),
        child: BottomNavigationBar(
            currentIndex: 0,
            backgroundColor: ColorManager.whiteColor,
            selectedItemColor: ColorManager.primaryColor,
            unselectedItemColor: ColorManager.blackColor.withOpacity(0.7),
            elevation: 3,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(ImageManager.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageManager.star),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageManager.wallet),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageManager.profile),
                label: '',
              ),
            ]),
      ),
      appBar: AppBar(
          elevation: 2,
          leadingWidth: 0,
          centerTitle: true,
          backgroundColor: ColorManager.whiteColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: ColorManager.grayColor,
                radius: 10.r,
                backgroundImage: const AssetImage(ImageManager.person1),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Oranos',
                    style: StyleManager.labelStyleBold(
                        color: ColorManager.blackColor),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: Colors.green,
                  )
                ],
              ),
              Icon(
                Icons.search,
                color: ColorManager.blackColor,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => HomeCubit(),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleList(title: 'Recommanded Experts'),
                    SizedBox(
                      height: SizeManager.h10,
                    ),
                    ListRecommanded(
                        people: HomeCubit.get(context).Recommandedpeople),
                    SizedBox(
                      height: SizeManager.h10,
                    ),
                    const TitleList(title: 'Online Experts'),
                    SizedBox(
                      height: SizeManager.h10,
                    ),
                    ListOnlineItems(
                      names: HomeCubit.get(context).names,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
