import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

class MainBtn extends StatelessWidget {
  final String text;
  final void Function()? onClick;

  const MainBtn({super.key, required this.text, this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        minimumSize: Size.fromHeight(55.h),
      ),
      onPressed: onClick,
      child: Text(text, style: TextStyles.font16white600w),
    );
  }
}
