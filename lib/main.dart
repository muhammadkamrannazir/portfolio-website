import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:portfolio/Screen%20Section/home.dart';
import 'package:portfolio/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(4298, 1990),
      builder: (context, child) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
      home: HomeScreen(),
      ),
      
    );
  }
}
