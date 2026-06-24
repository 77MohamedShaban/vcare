import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vcare/core/theming/text_styles.dart';

import '../../../core/helpers/assets_manager.dart';
import '../../../core/helpers/strings_manager.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      spacing: 10.w,
      children: [SvgPicture.asset(AssetsManager.vcareLogo),
        Text(StringsManager.vcare,style: TextStyles.font24Black700Weight,)],
    );
  }
}
