import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SortByBottomsheet extends StatelessWidget {
  const SortByBottomsheet({Key? key})
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
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
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "Sort by",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 35,
              ),
              child: Text(
                "Popular",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 30,
              ),
              child: Text(
                "Newest",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 31,
              ),
              child: Text(
                "Customer review",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: getMargin(
                top: 17,
              ),
              padding: getPadding(
                left: 16,
                top: 15,
                right: 16,
                bottom: 15,
              ),
              decoration: AppDecoration.txtFill3,
              child: Text(
                "Price: lowest to high",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 15,
                bottom: 38,
              ),
              child: Text(
                "Price: highest to low",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
