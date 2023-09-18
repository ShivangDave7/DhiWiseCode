import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_checkbox_button.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

class SigninwithapiScreen extends StatelessWidget {
  SigninwithapiScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController group1087Controller = TextEditingController();

  TextEditingController rectangleelevenController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 44,
            right: 20,
            bottom: 44,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.deepPurple50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.customBorderTL68,
                ),
                child: Container(
                  height: getSize(
                    130,
                  ),
                  width: getSize(
                    130,
                  ),
                  padding: getPadding(
                    left: 36,
                    top: 16,
                    right: 36,
                    bottom: 16,
                  ),
                  decoration: AppDecoration.fill3.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL68,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "B",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: getPadding(
                            bottom: 6,
                          ),
                          child: Text(
                            "Blogie",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 4,
                    top: 41,
                  ),
                  child: Text(
                    "Email",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumDMSansGray700,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: group1087Controller,
                margin: getMargin(
                  left: 4,
                  top: 10,
                  right: 4,
                ),
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 4,
                    top: 19,
                  ),
                  child: Text(
                    "Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumDMSansGray700,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: rectangleelevenController,
                margin: getMargin(
                  left: 4,
                  top: 10,
                  right: 4,
                ),
                obscureText: true,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
              Padding(
                padding: getPadding(
                  left: 4,
                  top: 28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckboxButton(
                      text: "Remember me?",
                      iconSize: getHorizontalSize(
                        30,
                      ),
                      value: isCheckbox,
                      padding: getPadding(
                        top: 5,
                        bottom: 5,
                      ),
                      textStyle: CustomTextStyles.labelLargeDMSansBluegray400,
                      onChange: (value) {
                        isCheckbox = value;
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                        bottom: 5,
                      ),
                      child: Text(
                        "Forgot Password?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeDMSansDeeppurpleA200,
                      ),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "Sign in",
                margin: getMargin(
                  top: 62,
                ),
                buttonStyle: CustomButtonStyles.fillOrange200.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    110,
                  ),
                  getVerticalSize(
                    40,
                  ),
                ))),
                buttonTextStyle:
                    CustomTextStyles.titleMediumDMSansOnPrimaryContainer,
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  bottom: 4,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account?",
                        style: CustomTextStyles.titleSmallDMSansBluegray400,
                      ),
                      TextSpan(
                        text: " ",
                        style: CustomTextStyles.titleSmallDMSansGray700,
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: CustomTextStyles.titleSmallDMSansDeeppurpleA200,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
