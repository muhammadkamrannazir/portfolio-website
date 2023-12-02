// // ignore_for_file: must_be_immutable, file_names

// // ignore_for_file: must_be_immutable, file_names
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio/widgets/text.dart';
// import '../utils/colors.dart';

// class CustomButton extends StatelessWidget {
//   final String name;
//   double? height;
//   double? width;
//   bool loading;
//   Color? color;
//   Color? textColor;
//   Color? borderColor;
//   VoidCallback? onPressed;
//   double? fontSize;
//   CustomButton({
//     Key? key,
//     required this.name,
//     this.color,
//     this.textColor,
//     this.borderColor,
//     this.height,
//     this.loading = false,
//     this.width,
//     this.fontSize,
//     required this.onPressed,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Container(
//         height: height ?? 60.h,
//         width: width ?? 230.w,
//         padding: EdgeInsets.symmetric(horizontal: 15.w),
//         decoration: BoxDecoration(
//           color: color ?? AppColors.primary,
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: Center(
//           child: CustomText(
//             name,
//             fontSize: fontSize ?? 16.sp,
//             color: textColor ?? Colors.white,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// indicator() {
//   return Center(
//     child: CupertinoActivityIndicator(
//       color: AppColors.primary,
//       radius: 15,
//     ),
//   );
// }
