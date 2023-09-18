import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListtypeItemWidget extends StatelessWidget {
  const ListtypeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        149,
      ),
      child: Padding(
        padding: getPadding(
          bottom: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(
                205,
              ),
              width: getHorizontalSize(
                149,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: getVerticalSize(
                        184,
                      ),
                      width: getHorizontalSize(
                        148,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: getVerticalSize(
                              184,
                            ),
                            width: getHorizontalSize(
                              148,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(
                                40,
                              ),
                              margin: getMargin(
                                left: 8,
                                top: 8,
                              ),
                              padding: getPadding(
                                left: 5,
                                top: 6,
                                right: 5,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.txtFill2.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder12,
                              ),
                              child: Text(
                                "NEW",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles
                                    .labelMediumMetropolisOnPrimaryContainerSemiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStarGray500,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
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
                            left: 3,
                            top: 4,
                          ),
                          child: Text(
                            "(0)",
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
                top: 5,
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
                top: 2,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
