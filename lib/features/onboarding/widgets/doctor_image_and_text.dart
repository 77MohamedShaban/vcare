import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vcare/core/helpers/assets_manager.dart';

import '../../../core/helpers/strings_manager.dart';
import '../../../core/theming/text_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsManager.vcareLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white.withAlpha(0), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.5, 1],
            ),
          ),
          child: Image.asset(AssetsManager.onboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            StringsManager.bestDoctorAppointmentApp,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: .center,
          ),
        ),
      ],
    );
  }
}
