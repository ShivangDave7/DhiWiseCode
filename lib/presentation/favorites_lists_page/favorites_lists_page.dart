import '../favorites_lists_page/widgets/favoriteslists_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FavoritesListsPage extends StatefulWidget {
  const FavoritesListsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FavoritesListsPageState createState() => FavoritesListsPageState();
}

class FavoritesListsPageState extends State<FavoritesListsPage>
    with AutomaticKeepAliveClientMixin<FavoritesListsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 18,
                        right: 16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: AppDecoration.background,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBaselinefilterlist24px,
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
                                    style: CustomTextStyles.bodySmallGray900,
                                  ),
                                ),
                                Spacer(
                                  flex: 48,
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBaselineswapvert24px,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
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
                                    style: CustomTextStyles.bodySmallGray900,
                                  ),
                                ),
                                Spacer(
                                  flex: 51,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgViewGray900,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                top: 28,
                              ),
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return FavoriteslistsItemWidget();
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              116,
                            ),
                            width: getHorizontalSize(
                              343,
                            ),
                            margin: getMargin(
                              top: 26,
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
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                                imagePath:
                                                    ImageConstant.imgImage19,
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
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
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
                                                            .imgImage20,
                                                        height: getSize(
                                                          104,
                                                        ),
                                                        width: getSize(
                                                          104,
                                                        ),
                                                        radius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                            getHorizontalSize(
                                                              8,
                                                            ),
                                                          ),
                                                          bottomLeft:
                                                              Radius.circular(
                                                            getHorizontalSize(
                                                              8,
                                                            ),
                                                          ),
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                          height: getSize(
                                                            104,
                                                          ),
                                                          width: getSize(
                                                            104,
                                                          ),
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage22,
                                                                height: getSize(
                                                                  104,
                                                                ),
                                                                width: getSize(
                                                                  104,
                                                                ),
                                                                radius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      8,
                                                                    ),
                                                                  ),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      8,
                                                                    ),
                                                                  ),
                                                                ),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                  height:
                                                                      getSize(
                                                                    104,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    104,
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgImage23,
                                                                        height:
                                                                            getSize(
                                                                          104,
                                                                        ),
                                                                        width:
                                                                            getSize(
                                                                          104,
                                                                        ),
                                                                        radius:
                                                                            BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(
                                                                            getHorizontalSize(
                                                                              8,
                                                                            ),
                                                                          ),
                                                                          bottomLeft:
                                                                              Radius.circular(
                                                                            getHorizontalSize(
                                                                              8,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              getHorizontalSize(
                                                                            40,
                                                                          ),
                                                                          margin:
                                                                              getMargin(
                                                                            left:
                                                                                4,
                                                                            top:
                                                                                5,
                                                                          ),
                                                                          padding:
                                                                              getPadding(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                6,
                                                                            right:
                                                                                5,
                                                                            bottom:
                                                                                6,
                                                                          ),
                                                                          decoration: AppDecoration
                                                                              .txtFill3
                                                                              .copyWith(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.txtCustomBorderTL8,
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            "-30% ",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style:
                                                                                CustomTextStyles.labelMediumMetropolisOnPrimaryContainerSemiBold,
                                                                          ),
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
                                                    ],
                                                  ),
                                                ),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "&Berries",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "T-Shirt",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium,
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
                                                        left: 19,
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
                                                              text: "S",
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
                                                  top: 14,
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
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                1,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                23,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .gray500,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "55",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleSmallRed700,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStarGray500,
                                                      height: getSize(
                                                        14,
                                                      ),
                                                      width: getSize(
                                                        14,
                                                      ),
                                                      margin: getMargin(
                                                        left: 27,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStarGray500,
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
                                                      svgPath: ImageConstant
                                                          .imgStarGray500,
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
                                                      svgPath: ImageConstant
                                                          .imgStarGray500,
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
                                                      svgPath: ImageConstant
                                                          .imgStarGray500,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgIconGray50040x40,
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
                                  decoration:
                                      IconButtonStyleHelper.outlineRed700,
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgShoppingbagiconactivated,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
