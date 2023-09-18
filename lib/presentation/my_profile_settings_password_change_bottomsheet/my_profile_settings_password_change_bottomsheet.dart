import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyProfileSettingsPasswordChangeBottomsheet extends StatelessWidget {
  MyProfileSettingsPasswordChangeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 15,
          top: 14,
          right: 15,
          bottom: 14,
        ),
        decoration: AppDecoration.background.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL34,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: getHorizontalSize(
                60,
              ),
              child: Divider(
                height: getVerticalSize(
                  6,
                ),
                thickness: getVerticalSize(
                  6,
                ),
                color: appTheme.gray500,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "Password Change",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ),
            CustomTextFormField(
              controller: passwordController,
              margin: getMargin(
                left: 1,
                top: 19,
              ),
              contentPadding: getPadding(
                left: 20,
                top: 25,
                right: 20,
                bottom: 25,
              ),
              textStyle: CustomTextStyles.titleSmallGray500,
              hintText: "Old Password",
              hintStyle: CustomTextStyles.titleSmallGray500,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              filled: true,
              fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.outlineBlack900,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "Forgot Password?  ",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleSmallGray500,
                ),
              ),
            ),
            CustomTextFormField(
              controller: newpasswordController,
              margin: getMargin(
                left: 1,
                top: 20,
              ),
              contentPadding: getPadding(
                left: 20,
                top: 25,
                right: 20,
                bottom: 25,
              ),
              textStyle: CustomTextStyles.titleSmallGray500,
              hintText: "New Password",
              hintStyle: CustomTextStyles.titleSmallGray500,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              filled: true,
              fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.outlineBlack900,
            ),
            CustomTextFormField(
              controller: newpasswordoneController,
              margin: getMargin(
                left: 1,
                top: 24,
              ),
              contentPadding: getPadding(
                left: 20,
                top: 25,
                right: 20,
                bottom: 25,
              ),
              textStyle: CustomTextStyles.titleSmallGray500,
              hintText: "Repeat New Password",
              hintStyle: CustomTextStyles.titleSmallGray500,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              filled: true,
              fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.outlineBlack900,
            ),
            CustomElevatedButton(
              text: "SAVE PASSWORD",
              margin: getMargin(
                left: 1,
                top: 32,
                bottom: 34,
              ),
              buttonStyle: CustomButtonStyles.outlineRed8003f.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  48,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
