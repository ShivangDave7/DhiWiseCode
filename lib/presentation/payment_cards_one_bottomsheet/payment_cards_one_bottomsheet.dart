import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_checkbox_button.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsOneBottomsheet extends StatelessWidget {
  PaymentCardsOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 16,
          top: 15,
          right: 16,
          bottom: 15,
        ),
        decoration: AppDecoration.background.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL34,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Padding(
              padding: getPadding(
                top: 26,
              ),
              child: Text(
                "Add new card",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
            CustomTextFormField(
              controller: nameController,
              margin: getMargin(
                top: 21,
              ),
              contentPadding: getPadding(
                left: 20,
                top: 25,
                right: 20,
                bottom: 25,
              ),
              textStyle: CustomTextStyles.titleSmallGray500,
              hintText: "Name on card",
              hintStyle: CustomTextStyles.titleSmallGray500,
              filled: true,
              fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.outlineBlack900,
            ),
            Container(
              margin: getMargin(
                top: 20,
              ),
              padding: getPadding(
                left: 20,
                top: 13,
                right: 20,
                bottom: 13,
              ),
              decoration: AppDecoration.outline4.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Card number",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodySmall,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "5546 8205 3693 3947",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMastercard,
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      32,
                    ),
                    margin: getMargin(
                      top: 9,
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                343,
              ),
              margin: getMargin(
                top: 20,
              ),
              padding: getPadding(
                left: 20,
                top: 14,
                right: 20,
                bottom: 14,
              ),
              decoration: AppDecoration.outline4.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Expire Date",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "05/23",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 20,
              ),
              padding: getPadding(
                left: 20,
                top: 13,
                right: 20,
                bottom: 13,
              ),
              decoration: AppDecoration.outline4.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "CVV",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "567",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgQuestion,
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Set as default payment method",
                iconSize: getHorizontalSize(
                  20,
                ),
                value: isCheckbox,
                margin: getMargin(
                  top: 30,
                ),
                padding: getPadding(
                  top: 2,
                  bottom: 2,
                ),
                textStyle: CustomTextStyles.bodyMediumGray900,
                onChange: (value) {
                  isCheckbox = value;
                },
              ),
            ),
            CustomElevatedButton(
              text: "ADD CARD",
              margin: getMargin(
                top: 22,
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
