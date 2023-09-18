import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/app_bar/appbar_image.dart';
import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

class FavoritesModulesScreen extends StatelessWidget {
  FavoritesModulesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicWidth(
                  child: SizedBox(
                    height: getVerticalSize(
                      136,
                    ),
                    width: getHorizontalSize(
                      452,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.outline1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                  height: getVerticalSize(
                                    44,
                                  ),
                                  centerTitle: true,
                                  title: AppbarSubtitle(
                                    text: "Favorites",
                                  ),
                                  actions: [
                                    AppbarImage(
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: getMargin(
                                        left: 11,
                                        top: 8,
                                        right: 11,
                                        bottom: 12,
                                      ),
                                    ),
                                  ],
                                  styleType: Style.bgFill_1,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 14,
                                    top: 56,
                                    bottom: 12,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBaselinefilterlist24px,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 5,
                                          bottom: 7,
                                        ),
                                        child: Text(
                                          "Filters",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles.bodySmallGray900,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBaselineswapvert24px,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          left: 61,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 6,
                                          top: 6,
                                          bottom: 6,
                                        ),
                                        child: Text(
                                          "Price: lowest to high",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles.bodySmallGray900,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgView,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          left: 63,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: getPadding(
                                    left: 22,
                                    top: 7,
                                    right: 22,
                                    bottom: 7,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Summer",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimaryContainer,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 56,
                                        ),
                                        child: Text(
                                          "T-Shirts",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryContainer,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 67,
                                        ),
                                        child: Text(
                                          "Shirts",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  100,
                                ),
                                margin: getMargin(
                                  left: 12,
                                ),
                                padding: getPadding(
                                  left: 11,
                                  top: 7,
                                  right: 11,
                                  bottom: 7,
                                ),
                                decoration: AppDecoration.txtFill2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder15,
                                ),
                                child: Text(
                                  "Shirts",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: getPadding(
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              right: 8,
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
                                    164,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            184,
                                          ),
                                          width: getHorizontalSize(
                                            162,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage24,
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconGray50040x40,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                alignment: Alignment.topRight,
                                                margin: getMargin(
                                                  top: 2,
                                                  right: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 36,
                                        width: 36,
                                        margin: getMargin(
                                          bottom: 2,
                                        ),
                                        padding: getPadding(
                                          all: 10,
                                        ),
                                        decoration:
                                            IconButtonStyleHelper.outlineRed700,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgShoppingbagiconactivated,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            RatingBar.builder(
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
                                            Padding(
                                              padding: getPadding(
                                                left: 2,
                                                top: 3,
                                              ),
                                              child: Text(
                                                "(10)",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "LIME",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Shirt ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
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
                                              text: "Blue",
                                              style: CustomTextStyles
                                                  .bodySmallGray900_1,
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
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: "L",
                                                style: CustomTextStyles
                                                    .bodySmallGray900_1,
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
                                    top: 6,
                                  ),
                                  child: Text(
                                    "10",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 8,
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
                                    164,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            184,
                                          ),
                                          width: getHorizontalSize(
                                            162,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage25,
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
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  width: getHorizontalSize(
                                                    151,
                                                  ),
                                                  margin: getMargin(
                                                    left: 8,
                                                    top: 2,
                                                    right: 3,
                                                    bottom: 152,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: getMargin(
                                                          top: 6,
                                                        ),
                                                        padding: getPadding(
                                                          left: 5,
                                                          top: 6,
                                                          right: 5,
                                                          bottom: 6,
                                                        ),
                                                        decoration:
                                                            AppDecoration.fill7
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder12,
                                                        ),
                                                        child: Text(
                                                          "NEW",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelMediumMetropolisOnPrimaryContainerSemiBold,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconGray50040x40,
                                                        height: getSize(
                                                          24,
                                                        ),
                                                        width: getSize(
                                                          24,
                                                        ),
                                                        margin: getMargin(
                                                          bottom: 6,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 36,
                                        width: 36,
                                        margin: getMargin(
                                          bottom: 2,
                                        ),
                                        padding: getPadding(
                                          all: 10,
                                        ),
                                        decoration:
                                            IconButtonStyleHelper.outlineRed700,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgShoppingbagiconactivated,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                                top: 3,
                                              ),
                                              child: Text(
                                                "(0)",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 8,
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
                                    left: 1,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Longsleeve Violeta",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 3,
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
                                              text: "Orange",
                                              style: CustomTextStyles
                                                  .bodySmallGray900_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Size:",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: "S",
                                                style: CustomTextStyles
                                                    .bodySmallGray900_1,
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
                                    top: 5,
                                  ),
                                  child: Text(
                                    "46",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                        bottom: 9,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: getVerticalSize(
                              280,
                            ),
                            width: getHorizontalSize(
                              164,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
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
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "52",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 37,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                          ),
                                          child: Text(
                                            "Olivier",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 2,
                                            ),
                                            child: Text(
                                              "Shirt ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 75,
                                    ),
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
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "(10)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles.bodySmall10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 48,
                                      bottom: 22,
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
                                            style: CustomTextStyles
                                                .bodySmallGray900_1,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 21,
                                    ),
                                    child: RichText(
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
                                            style: CustomTextStyles
                                                .bodySmallGray900_1,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      decoration: AppDecoration.fill1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconGray50040x40,
                                            height: getSize(
                                              24,
                                            ),
                                            width: getSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              right: 4,
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.7,
                                            child: Container(
                                              margin: getMargin(
                                                top: 122,
                                                right: 1,
                                                bottom: 94,
                                              ),
                                              padding: getPadding(
                                                left: 11,
                                                top: 4,
                                                right: 11,
                                                bottom: 4,
                                              ),
                                              decoration:
                                                  AppDecoration.fill2.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL8,
                                              ),
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  139,
                                                ),
                                                child: Text(
                                                  "Sorry, this item is currently \nsold out",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray900,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 2,
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
                                    164,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            184,
                                          ),
                                          width: getHorizontalSize(
                                            162,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage27,
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
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  width: getHorizontalSize(
                                                    151,
                                                  ),
                                                  margin: getMargin(
                                                    left: 8,
                                                    top: 2,
                                                    right: 3,
                                                    bottom: 152,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          40,
                                                        ),
                                                        margin: getMargin(
                                                          top: 6,
                                                        ),
                                                        padding: getPadding(
                                                          left: 5,
                                                          top: 6,
                                                          right: 5,
                                                          bottom: 6,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .txtFill3
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder12,
                                                        ),
                                                        child: Text(
                                                          "-30% ",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelMediumMetropolisOnPrimaryContainerSemiBold,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconGray50040x40,
                                                        height: getSize(
                                                          24,
                                                        ),
                                                        width: getSize(
                                                          24,
                                                        ),
                                                        margin: getMargin(
                                                          bottom: 6,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 36,
                                        width: 36,
                                        margin: getMargin(
                                          bottom: 2,
                                        ),
                                        padding: getPadding(
                                          all: 10,
                                        ),
                                        decoration:
                                            IconButtonStyleHelper.outlineRed700,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgShoppingbagiconactivated,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                              svgPath:
                                                  ImageConstant.imgStarGray500,
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
                                                top: 3,
                                              ),
                                              child: Text(
                                                "(0)",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "&Berries",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "T-Shirt",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium,
                                  ),
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
                                              style: CustomTextStyles
                                                  .bodySmallGray900_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 19,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Size:",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: "S",
                                                style: CustomTextStyles
                                                    .bodySmallGray900_1,
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
                                    top: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(
                                          14,
                                        ),
                                        width: getHorizontalSize(
                                          26,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  1,
                                                ),
                                                width: getHorizontalSize(
                                                  23,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray500,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "55",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallGray500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                        ),
                                        child: Text(
                                          "39",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles.titleSmallRed700,
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
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Offer:
        return AppRoutes.offerScreenPage;
      case BottomBarEnum.Account:
        return AppRoutes.myProfileMyOrdersOrderDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardContainerPage:
        return DashboardContainerPage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.offerScreenPage:
        return OfferScreenPage();
      case AppRoutes.myProfileMyOrdersOrderDetailsPage:
        return MyProfileMyOrdersOrderDetailsPage();
      default:
        return DefaultWidget();
    }
  }
}
