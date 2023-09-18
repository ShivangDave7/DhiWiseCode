import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class MyBagpromoItemWidget extends StatelessWidget {
  const MyBagpromoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline7.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            width: getHorizontalSize(
              80,
            ),
            padding: getPadding(
              left: 9,
              top: 21,
              right: 9,
              bottom: 21,
            ),
            decoration: AppDecoration.gradientnamered900nameredA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 3,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.displaySmallOnPrimaryContainer_1,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    27,
                  ),
                  width: getHorizontalSize(
                    20,
                  ),
                  margin: getMargin(
                    left: 1,
                    top: 2,
                    bottom: 6,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          " off",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              CustomTextStyles.titleSmallOnPrimaryContainerBold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "%",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              CustomTextStyles.titleSmallOnPrimaryContainerBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 14,
              top: 23,
              bottom: 23,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Personal offer",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "mypromocode2020",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallGray900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 36,
              top: 11,
              bottom: 11,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "6 days remaining",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodySmall,
                ),
                CustomElevatedButton(
                  text: "Apply",
                  margin: getMargin(
                    top: 9,
                  ),
                  buttonStyle: CustomButtonStyles.outlineRed8003fTL18.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      93,
                    ),
                    getVerticalSize(
                      36,
                    ),
                  ))),
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
