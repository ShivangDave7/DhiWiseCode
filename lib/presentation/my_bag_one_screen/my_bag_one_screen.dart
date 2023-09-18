import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

class MyBagOneScreen extends StatelessWidget {
  MyBagOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController numberofitemsController = TextEditingController();

  TextEditingController numberofitemsController1 = TextEditingController();

  TextEditingController numberofitemsController2 = TextEditingController();

  TextEditingController promocodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 8,
            right: 11,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 31,
                ),
                child: Text(
                  "My Bag",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              Container(
                height: getVerticalSize(
                  377,
                ),
                width: getHorizontalSize(
                  346,
                ),
                margin: getMargin(
                  left: 5,
                  top: 7,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
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
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
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
                                                imagePath: ImageConstant
                                                    .imgImage104x104,
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
                                                imagePath:
                                                    ImageConstant.imgImage6,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pullover",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.titleMedium,
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
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                          TextSpan(
                                                            text: " ",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
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
                                                        left: 13,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "Size:",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: " ",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: "L",
                                                              style: CustomTextStyles
                                                                  .bodySmallGray900_1,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomTextFormField(
                                                      width: getHorizontalSize(
                                                        109,
                                                      ),
                                                      controller:
                                                          numberofitemsController,
                                                      contentPadding:
                                                          getPadding(
                                                        top: 10,
                                                        bottom: 10,
                                                      ),
                                                      textStyle: theme.textTheme
                                                          .titleSmall!,
                                                      hintText: "1",
                                                      hintStyle: theme.textTheme
                                                          .titleSmall!,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      prefix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          right: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50024x24,
                                                        ),
                                                      ),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                      suffix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          left: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50040x40,
                                                        ),
                                                      ),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 80,
                                                        top: 10,
                                                        bottom: 11,
                                                      ),
                                                      child: Text(
                                                        "51",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleSmall,
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
                          ),
                          Container(
                            height: getVerticalSize(
                              104,
                            ),
                            width: getHorizontalSize(
                              346,
                            ),
                            margin: getMargin(
                              top: 24,
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
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
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
                                                imagePath: ImageConstant
                                                    .imgImage104x104,
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
                                                imagePath:
                                                    ImageConstant.imgImage15,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "T-Shirt",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.titleMedium,
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
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                          TextSpan(
                                                            text: " ",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
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
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 16,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "Size:",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: " ",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: "L",
                                                              style: CustomTextStyles
                                                                  .bodySmallGray900_1,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 1,
                                                  top: 13,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomTextFormField(
                                                      width: getHorizontalSize(
                                                        109,
                                                      ),
                                                      controller:
                                                          numberofitemsController1,
                                                      contentPadding:
                                                          getPadding(
                                                        top: 10,
                                                        bottom: 10,
                                                      ),
                                                      textStyle: theme.textTheme
                                                          .titleSmall!,
                                                      hintText: "1",
                                                      hintStyle: theme.textTheme
                                                          .titleSmall!,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      prefix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          right: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50024x24,
                                                        ),
                                                      ),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                      suffix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          left: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50040x40,
                                                        ),
                                                      ),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 76,
                                                        top: 10,
                                                        bottom: 11,
                                                      ),
                                                      child: Text(
                                                        "30",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleSmall,
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
                          ),
                          Container(
                            height: getVerticalSize(
                              104,
                            ),
                            width: getHorizontalSize(
                              346,
                            ),
                            margin: getMargin(
                              top: 24,
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
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage104x104,
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
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 11,
                                            bottom: 11,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sport Dress",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 1,
                                                  top: 2,
                                                ),
                                                child: Row(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "Color:",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                          TextSpan(
                                                            text: " ",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
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
                                                        left: 13,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "Size:",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: " ",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                            TextSpan(
                                                              text: "M",
                                                              style: CustomTextStyles
                                                                  .bodySmallGray900_1,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomTextFormField(
                                                      width: getHorizontalSize(
                                                        109,
                                                      ),
                                                      controller:
                                                          numberofitemsController2,
                                                      contentPadding:
                                                          getPadding(
                                                        top: 10,
                                                        bottom: 10,
                                                      ),
                                                      textStyle: theme.textTheme
                                                          .titleSmall!,
                                                      hintText: "1",
                                                      hintStyle: theme.textTheme
                                                          .titleSmall!,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      prefix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          right: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50024x24,
                                                        ),
                                                      ),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                      suffix: Container(
                                                        padding: getPadding(
                                                          all: 6,
                                                        ),
                                                        margin: getMargin(
                                                          left: 16,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              18,
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.1),
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              offset: Offset(
                                                                0,
                                                                4,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconGray50040x40,
                                                        ),
                                                      ),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                          36,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 77,
                                                        top: 10,
                                                        bottom: 11,
                                                      ),
                                                      child: Text(
                                                        "43",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleSmall,
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
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: getMargin(
                          right: 36,
                        ),
                        padding: getPadding(
                          top: 19,
                          bottom: 19,
                        ),
                        decoration: AppDecoration.outline5.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Add to favorites",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray900,
                            ),
                            Opacity(
                              opacity: 0.1,
                              child: Padding(
                                padding: getPadding(
                                  top: 17,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    170,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: appTheme.gray500.withOpacity(0.39),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "Delete from the list",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                controller: promocodeController,
                margin: getMargin(
                  left: 5,
                  top: 25,
                  right: 5,
                ),
                contentPadding: getPadding(
                  left: 20,
                  top: 11,
                  bottom: 11,
                ),
                textStyle: theme.textTheme.titleSmall!,
                hintText: "mypromocode2020",
                hintStyle: theme.textTheme.titleSmall!,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 6,
                    right: 5,
                    bottom: 6,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgIconGray50040x40,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    36,
                  ),
                ),
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                defaultBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900TL8,
                enabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900TL8,
                focusedBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900TL8,
                disabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900TL8,
              ),
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 28,
                  right: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 2,
                      ),
                      child: Text(
                        "Total amount:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray500,
                      ),
                    ),
                    Text(
                      "112",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "CHECK OUT",
                margin: getMargin(
                  left: 5,
                  top: 27,
                  right: 5,
                  bottom: 5,
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
