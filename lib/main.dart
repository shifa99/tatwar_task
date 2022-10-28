import 'package:enhanced_elearning/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              iconTheme: IconThemeData(
                size: 22.sp,
              ),
              primarySwatch: Colors.blue,
            ),
            home: const WelcomeScreen(),
          );
        });
  }
}
