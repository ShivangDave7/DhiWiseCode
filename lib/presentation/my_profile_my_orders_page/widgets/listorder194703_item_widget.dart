import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Listorder194703ItemWidget extends StatelessWidget {
  const Listorder194703ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 18,
        right: 15,
        bottom: 18,
      ),
      decoration: AppDecoration.outline6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 4,
              right: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order №1947034",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "05-12-2019",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 3,
              top: 17,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Tracking number:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: Text(
                    "IW3475453455",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 7,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "Quantity:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 11,
                  ),
                  child: Text(
                    "3",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                Text(
                  "Total Amount:",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: getPadding(
                    left: 11,
                  ),
                  child: Text(
                    "112",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 17,
              right: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  text: "Details",
                  buttonStyle: CustomButtonStyles.outlineGray900.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      98,
                    ),
                    getVerticalSize(
                      36,
                    ),
                  ))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    bottom: 11,
                  ),
                  child: Text(
                    "Delivered",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallGreen600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
