import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  IconData? icon;
  TextEditingController controller;
  Widget? suffix;
  bool obscureText;
  String? Function(String?)? validator;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  CustomTextField({
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.textInputAction,
    this.suffix,
    this.obscureText = false,
    this.validator,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: AppColors.white, fontSize: 24),
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.white.withOpacity(.4),
          fontSize: 24,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Icon(
            icon,
            size: 30,
            color: AppColors.primary.withOpacity(.6),
          ),
        ),
        filled: true,
        fillColor: Colors.black,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: suffix,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.primary, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
              BorderSide(color: AppColors.primary.withOpacity(.6), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.primary, width: 1),
        ),
      ),
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: AppColors.primary, width: .5),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: AppColors.white, fontSize: 18),
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(color: AppColors.primary),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: CircleAvatar(
            backgroundColor: AppColors.primary,
            child: Icon(
              Icons.search,
              color: AppColors.white,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.only(left: 15),
        border: border(),
        enabledBorder: border(),
        focusedBorder: focusedBorder(),
      ),
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(
        color: AppColors.white,
      ),
    );
  }

  focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: AppColors.primary),
    );
  }
}
