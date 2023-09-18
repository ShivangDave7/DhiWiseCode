import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MyBagItemWidget extends StatelessWidget {
  const MyBagItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        104,
      ),
      width: getHorizontalSize(
        346,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                right: 3,
              ),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: getSize(
                      104,
                    ),
                    width: getSize(
                      104,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage104x104,
                          height: getSize(
                            104,
                          ),
                          width: getSize(
                            104,
                          ),
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage6,
                          height: getSize(
                            104,
                          ),
                          width: getSize(
                            104,
                          ),
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                      top: 11,
                      bottom: 11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 4,
                          ),
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Color:",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: " ",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: "Black",
                                      style:
                                          CustomTextStyles.bodySmallGray900_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 13,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Size:",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      TextSpan(
                                        text: "L",
                                        style:
                                            CustomTextStyles.bodySmallGray900_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 14,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 36,
                                width: 36,
                                padding: getPadding(
                                  all: 6,
                                ),
                                decoration:
                                    IconButtonStyleHelper.outlineBlack900TL183,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconGray50024x24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 10,
                                  bottom: 11,
                                ),
                                child: Text(
                                  "1",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomIconButton(
                                height: 36,
                                width: 36,
                                margin: getMargin(
                                  left: 16,
                                ),
                                padding: getPadding(
                                  all: 6,
                                ),
                                decoration:
                                    IconButtonStyleHelper.outlineBlack900TL183,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconGray50040x40,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 80,
                                  top: 10,
                                  bottom: 11,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgIcon40x40,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
