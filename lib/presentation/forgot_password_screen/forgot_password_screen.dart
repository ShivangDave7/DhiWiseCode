import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController rectangletwelveController = TextEditingController();

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
            top: 31,
            right: 24,
            bottom: 31,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Forgot password",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumDMSansGray700Medium,
              ),
              Container(
                width: getHorizontalSize(
                  297,
                ),
                margin: getMargin(
                  left: 15,
                  top: 26,
                  right: 15,
                ),
                child: Text(
                  "Please enter your registered email addres to receive\nyour password reset intruction ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumDMSansBluegray400,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 36,
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
                controller: rectangletwelveController,
                margin: getMargin(
                  top: 10,
                ),
                obscureText: true,
                filled: true,
                fillColor: appTheme.gray100,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillGray100,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillGray100,
              ),
              CustomElevatedButton(
                text: "Submit",
                margin: getMargin(
                  top: 37,
                  bottom: 5,
                ),
                buttonStyle: CustomButtonStyles.fillBlack900.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    144,
                  ),
                  getVerticalSize(
                    40,
                  ),
                ))),
                buttonTextStyle:
                    CustomTextStyles.titleMediumDMSansOnPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
