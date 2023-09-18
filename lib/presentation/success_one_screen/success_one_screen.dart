import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';

class SuccessOneScreen extends StatelessWidget {
  const SuccessOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 70,
            right: 70,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBags,
                height: getVerticalSize(
                  210,
                ),
                width: getHorizontalSize(
                  217,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 47,
                  ),
                  child: Text(
                    "Success!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.displaySmallBlack900,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  225,
                ),
                margin: getMargin(
                  left: 5,
                  top: 15,
                  right: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Your order will be delivered soon.\nThank you for choosing our app!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "CONTINUE SHOPPING",
          margin: getMargin(
            left: 18,
            right: 14,
            bottom: 59,
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
      ),
    );
  }
}
