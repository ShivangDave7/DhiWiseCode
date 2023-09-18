import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewWriteAReviewBottomsheet extends StatelessWidget {
  ClientSReviewWriteAReviewBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController reviewinputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 16,
          top: 14,
          right: 16,
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
                top: 18,
              ),
              child: Text(
                "What is you rate?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: getVerticalSize(
                  37,
                ),
                unratedColor: appTheme.blue50,
                itemCount: 1,
                updateOnDrag: true,
                onRatingUpdate: (rating) {},
                itemBuilder: (
                  context,
                  _,
                ) {
                  return Icon(
                    Icons.star,
                    color: appTheme.yellow700,
                  );
                },
              ),
            ),
            Container(
              width: getHorizontalSize(
                227,
              ),
              margin: getMargin(
                top: 32,
              ),
              child: Text(
                "Please share your opinion\nabout the product",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
            CustomTextFormField(
              controller: reviewinputController,
              margin: getMargin(
                top: 17,
              ),
              contentPadding: getPadding(
                left: 20,
                top: 15,
                right: 20,
                bottom: 15,
              ),
              textStyle: theme.textTheme.bodyMedium!,
              hintText: "Your review",
              hintStyle: theme.textTheme.bodyMedium!,
              maxLines: 10,
              filled: true,
              fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.outlineBlack900,
            ),
            Opacity(
              opacity: 0.2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: getMargin(
                    top: 39,
                  ),
                  padding: getPadding(
                    left: 6,
                    top: 15,
                    right: 6,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.outline3.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: 52,
                        width: 52,
                        padding: getPadding(
                          all: 13,
                        ),
                        decoration: IconButtonStyleHelper.fillRed700TL26,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgBaselinephotocamera24px,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "Add your photos",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelMediumMetropolisGray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomElevatedButton(
              text: "SEND REVIEW",
              margin: getMargin(
                top: 44,
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
