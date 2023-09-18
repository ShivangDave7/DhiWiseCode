import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_checkbox_button.dart';

// ignore: must_be_immutable
class ShippingItemWidget extends StatelessWidget {
  ShippingItemWidget({Key? key})
      : super(
          key: key,
        );

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 23,
        top: 18,
        right: 23,
        bottom: 18,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 5,
              top: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "Edit",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleSmallRed700,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 5,
              top: 12,
              right: 57,
            ),
            child: Text(
              "3 Newbridge Court \r\nChino Hills, CA 91709, United States",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyMediumGray900,
            ),
          ),
          CustomCheckboxButton(
            text: "Use as the shipping address",
            iconSize: getHorizontalSize(
              20,
            ),
            value: isCheckbox,
            margin: getMargin(
              left: 5,
              top: 16,
              right: 74,
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
        ],
      ),
    );
  }
}
