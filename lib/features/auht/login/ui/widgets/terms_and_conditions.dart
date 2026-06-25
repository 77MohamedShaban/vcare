import 'package:flutter/material.dart';
import 'package:vcare/core/helpers/strings_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: StringsManager.byLoggingYouAgree,
            style: TextStyles.font14LightGrayRegular,
          ),
          TextSpan(
            text: StringsManager.termsAndConditions,
            style: TextStyles.font14DarkBlueRegular,
          ),
          TextSpan(
            text: StringsManager.and,
            style: TextStyles.font14LightGrayRegular.copyWith(height: 1.8),
          ),
          TextSpan(
            text: StringsManager.privacyPolicy,
            style: TextStyles.font14DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
