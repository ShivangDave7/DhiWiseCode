import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CatalogTwoItemWidget extends StatelessWidget {
  const CatalogTwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: getVerticalSize(
            205,
          ),
          width: getHorizontalSize(
            162,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage184x162,
                height: getVerticalSize(
                  184,
                ),
                width: getHorizontalSize(
                  162,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarGray500,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 3,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 36,
                width: 36,
                margin: getMargin(
                  bottom: 5,
                ),
                padding: getPadding(
                  all: 6,
                ),
                decoration: IconButtonStyleHelper.outlineBlack900TL181,
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  svgPath: ImageConstant.imgIcon,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 6,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodySmall,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 5,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
