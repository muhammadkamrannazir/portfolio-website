import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/images.dart';
import 'package:portfolio/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.appbarBackgroundColor,
              height: 113.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 350.w),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.logo,
                    width: 35.w,
                  ),
                  const Spacer(),
                  CustomText('Home', fontSize: 25),
                  SizedBox(width: 168.w),
                  CustomText('About', fontSize: 25),
                  SizedBox(width: 168.w),
                  CustomText('Lab', fontSize: 25),
                ],
              ),
            ),
            Container(
              color: AppColors.appbarBackgroundColor,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 350.w),
              child: Column(
                children: [
                  SizedBox(height: 140.h),
                  Image.asset(
                    AppAssets.logo,
                    width: 35.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
