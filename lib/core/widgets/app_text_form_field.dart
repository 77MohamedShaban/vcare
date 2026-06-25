import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';

import '../theming/text_styles.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final bool isPassword;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final Color? backgroundColor;

  const AppTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.textInputAction,
    required this.hintText,
    this.isPassword = false,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    this.validator,
    this.backgroundColor,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool isShowPassword = widget.isPassword;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapUpOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      controller: widget.controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: isShowPassword,
      style: widget.inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.backgroundColor ?? ColorsManager.offWhite,
        isDense: true,
        contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 18),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  !isShowPassword ? Icons.visibility : Icons.visibility_off,
                  weight: 30.w,
                ),
              )
            : null,
        suffixIconColor:
            _focusNode.hasFocus
                ? ColorsManager.darkBlue
                : ColorsManager.lightGray,
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle ?? TextStyles.font14LightGrayRegular,
        enabledBorder:
            widget.enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.4.w,
              ),
            ),
        focusedBorder:
            widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.6.w,
              ),
            ),
        focusedErrorBorder:
            widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: Colors.red, width: 1.4.w),
            ),
      ),
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
