import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/images.dart';
import 'package:portfolio/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.appbarBackgroundColor,
            height: 113,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(AppAssets.logo),
                const Spacer(),
                CustomText('Home'),
                CustomText('About'),
                CustomText('Lab'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
