import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FavoriteslistsItemWidget extends StatelessWidget {
  const FavoriteslistsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        116,
      ),
      width: getHorizontalSize(
        343,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: getMargin(
                bottom: 12,
              ),
              decoration: AppDecoration.fill.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          imagePath: ImageConstant.imgImage15,
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
                          imagePath: ImageConstant.imgImage16,
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
                      top: 14,
                      bottom: 14,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodySmall,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "Shirt",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
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
                                      text: "Blue",
                                      style:
                                          CustomTextStyles.bodySmallGray900_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 25,
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
                            top: 14,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleSmall,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 55,
                                ),
                                child: RatingBar.builder(
                                  initialRating: 0,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(
                                    14,
                                  ),
                                  unratedColor: appTheme.blue50,
                                  itemCount: 5,
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
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgIconGray50040x40,
                    height: getSize(
                      40,
                    ),
                    width: getSize(
                      40,
                    ),
                    margin: getMargin(
                      bottom: 64,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 36,
            width: 36,
            padding: getPadding(
              all: 10,
            ),
            decoration: IconButtonStyleHelper.outlineRed700,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgShoppingbagiconactivated,
            ),
          ),
        ],
      ),
    );
  }
}
