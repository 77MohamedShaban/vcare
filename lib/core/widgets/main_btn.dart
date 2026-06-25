import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

class MainBtn extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final double? btnWidth;
  final double? btnHeight;
  final void Function() onClick;

  const MainBtn({super.key, required this.text, required this.onClick, this.backgroundColor, this.btnWidth, this.btnHeight});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor?? ColorsManager.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        minimumSize: Size(btnWidth?.w ?? double.infinity, btnHeight?.h ?? 50.h),
      ),
      onPressed: onClick,
      child: Text(text, style: TextStyles.font16whiteSemiBold),
    );
  }
}
