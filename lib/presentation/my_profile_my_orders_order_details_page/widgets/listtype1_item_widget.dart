import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class Listtype1ItemWidget extends StatelessWidget {
  const Listtype1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  imagePath: ImageConstant.imgImage5,
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
              top: 10,
              bottom: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pullover",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "Mango",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
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
                              text: "Gray",
                              style: CustomTextStyles.bodySmallGray900_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
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
                                style: CustomTextStyles.bodySmallGray900_1,
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
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Units:",
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: " ",
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "1",
                                style: CustomTextStyles.bodySmallGray900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        "51",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
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
