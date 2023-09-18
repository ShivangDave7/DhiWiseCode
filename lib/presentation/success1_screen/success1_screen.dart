import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';

class Success1Screen extends StatelessWidget {
  const Success1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSuccess,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 55,
              top: 75,
              right: 55,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Success!",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.displaySmallBlack900,
                ),
                Container(
                  width: getHorizontalSize(
                    262,
                  ),
                  margin: getMargin(
                    top: 19,
                  ),
                  child: Text(
                    "Your order will be delivered soon.\nThank you for choosing our app!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumBlack900_1,
                  ),
                ),
                CustomElevatedButton(
                  text: "Continue shopping",
                  margin: getMargin(
                    top: 16,
                    bottom: 5,
                  ),
                  buttonStyle: CustomButtonStyles.outlineRed8003fTL18.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      160,
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
        ),
      ),
    );
  }
}
