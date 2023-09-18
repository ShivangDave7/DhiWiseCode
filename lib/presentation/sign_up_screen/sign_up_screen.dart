import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController rectangletwelveController = TextEditingController();

  TextEditingController group1103Controller = TextEditingController();

  TextEditingController rectangletwentyController = TextEditingController();

  TextEditingController rectangletwentyController1 = TextEditingController();

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
            left: 24,
            top: 44,
            right: 24,
            bottom: 44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Card(
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
              ),
              Padding(
                padding: getPadding(
                  top: 41,
                ),
                child: Text(
                  "Email",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumDMSansGray700,
                ),
              ),
              CustomTextFormField(
                controller: rectangletwelveController,
                margin: getMargin(
                  top: 10,
                ),
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "Username",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumDMSansGray700,
                ),
              ),
              CustomTextFormField(
                controller: group1103Controller,
                margin: getMargin(
                  top: 5,
                ),
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "Password",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumDMSansGray700,
                ),
              ),
              CustomTextFormField(
                controller: rectangletwentyController,
                margin: getMargin(
                  top: 5,
                ),
                textInputAction: TextInputAction.next,
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
                  top: 26,
                ),
                child: Text(
                  "Confirm Password",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumDMSansGray700,
                ),
              ),
              CustomTextFormField(
                controller: rectangletwentyController1,
                margin: getMargin(
                  top: 5,
                  bottom: 5,
                ),
                obscureText: true,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "Sign Up",
          margin: getMargin(
            left: 132,
            right: 132,
            bottom: 51,
          ),
          buttonStyle: CustomButtonStyles.fillDeeppurpleA200.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(Size(
            getHorizontalSize(
              110,
            ),
            getVerticalSize(
              40,
            ),
          ))),
          buttonTextStyle: CustomTextStyles.titleMediumDMSansOnPrimaryContainer,
        ),
      ),
    );
  }
}
