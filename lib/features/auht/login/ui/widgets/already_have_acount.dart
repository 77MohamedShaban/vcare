import 'package:flutter/material.dart';
import 'package:vcare/core/helpers/strings_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';

class AlreadyHaveAcount extends StatelessWidget {
  const AlreadyHaveAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: StringsManager.alreadyHaveAnAccount,
              style: TextStyles.font14DarkBlueRegular),
          TextSpan(text: StringsManager.signUp,
              style: TextStyles.font16BlueSemiBold)
        ]));
  }
}
