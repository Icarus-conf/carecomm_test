import 'package:carecomm_test/core/util/app_colors.dart';
import 'package:carecomm_test/core/util/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: double.infinity,
      child: Column(
        children: [
          Gap(60.h),
          Text(
            text,
            style: CustomTextStyles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Gap(20.h),
        ],
      ),
    );
  }
}
