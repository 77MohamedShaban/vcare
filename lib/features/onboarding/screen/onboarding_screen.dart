import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/helpers/extensions.dart';
import 'package:vcare/core/helpers/strings_manager.dart';
import 'package:vcare/core/routing/routes_name.dart';
import 'package:vcare/features/onboarding/widgets/doctor_image_and_text.dart';
import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/main_btn.dart';
import '../widgets/logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              children: [
                const LogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    spacing: 25.h,
                    children: [
                      Text(
                        StringsManager.manageAndSchedule,
                        style: TextStyles.font14GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      MainBtn(
                        text: StringsManager.getStarted,
                        onClick: () => context.pushNamed(RoutesName.login),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
