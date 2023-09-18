import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  const ListvolumeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 21,
        top: 24,
        right: 21,
        bottom: 24,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolume,
            height: getVerticalSize(
              22,
            ),
            width: getHorizontalSize(
              36,
            ),
            radius: BorderRadius.circular(
              getSize(
                11.0,
              ),
            ),
            margin: getMargin(
              left: 3,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 30,
            ),
            child: Text(
              "6326    9124    8124    9875",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineSmall!.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "CARD HOLDER",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .bodySmallPoppinsOnPrimaryContainer10
                          .copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: getPadding(
                      left: 37,
                    ),
                    child: Text(
                      "CARD SAVE",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .bodySmallPoppinsOnPrimaryContainer10
                          .copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Dominic Ovo",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.labelMediumOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 41,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.labelMediumOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
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
