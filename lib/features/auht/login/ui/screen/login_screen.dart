import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/helpers/spacing.dart';
import 'package:vcare/core/helpers/strings_manager.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/widgets/app_text_form_field.dart';
import 'package:vcare/core/widgets/main_btn.dart';
import 'package:vcare/features/auht/login/ui/widgets/already_have_acount.dart';
import 'package:vcare/features/auht/login/ui/widgets/terms_and_conditions.dart';

import '../../../../../core/theming/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringsManager.welcomeBack,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  StringsManager.loginHeader,
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(32),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        controller: emailController,
                        hintText: StringsManager.email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      verticalSpace(16),
                      AppTextFormField(
                        controller: passwordController,
                        hintText: StringsManager.password,
                        isPassword: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                      ),
                      verticalSpace(16),
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            StringsManager.forgotPassword,
                            style: TextStyles.font14BlueRegular,
                          ),
                        ),
                      ),
                      verticalSpace(40),
                      MainBtn(
                        text: StringsManager.login,
                        backgroundColor: ColorsManager.mainBlue,
                        onClick: () {},
                      ),
                      verticalSpace(30),
                      const Divider(
                        color: ColorsManager.lightGray,
                        indent: 20,
                        endIndent: 20,
                      ),
                      verticalSpace(20),
                      const TermsAndConditions(),
                      verticalSpace(50),
                      const AlreadyHaveAcount(),
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
