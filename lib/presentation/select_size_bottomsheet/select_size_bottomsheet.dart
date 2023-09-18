import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SelectSizeBottomsheet extends StatelessWidget {
  const SelectSizeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          top: 14,
          bottom: 14,
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
                top: 16,
              ),
              child: Text(
                "Select size",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 25,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getHorizontalSize(
                      100,
                    ),
                    padding: getPadding(
                      left: 30,
                      top: 12,
                      right: 30,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.txtWhite.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "XS",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      100,
                    ),
                    padding: getPadding(
                      left: 30,
                      top: 12,
                      right: 30,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.txtWhite.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "S",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      100,
                    ),
                    padding: getPadding(
                      left: 30,
                      top: 12,
                      right: 30,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.txtWhite.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "M",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 16,
                ),
                child: Row(
                  children: [
                    CustomOutlinedButton(
                      text: "L",
                      buttonStyle: CustomButtonStyles.outlineGray500.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          100,
                        ),
                        getVerticalSize(
                          40,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.titleSmall!,
                    ),
                    CustomOutlinedButton(
                      text: "XL",
                      margin: getMargin(
                        left: 22,
                      ),
                      buttonStyle: CustomButtonStyles.outlineGray500.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          100,
                        ),
                        getVerticalSize(
                          40,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.titleSmall!,
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.25,
              child: Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: appTheme.gray500.withOpacity(0.44),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 15,
                  top: 14,
                ),
                child: Text(
                  "Size info",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Opacity(
              opacity: 0.25,
              child: Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: appTheme.gray500.withOpacity(0.44),
                ),
              ),
            ),
            CustomElevatedButton(
              text: "ADD TO CART",
              margin: getMargin(
                left: 16,
                top: 27,
                right: 16,
                bottom: 30,
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
