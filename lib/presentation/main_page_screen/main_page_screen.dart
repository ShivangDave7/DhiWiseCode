import '../main_page_screen/widgets/main_page_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getVerticalSize(
                    492,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage362x375,
                        height: getVerticalSize(
                          362,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: getVerticalSize(
                            492,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage492x375,
                                height: getVerticalSize(
                                  492,
                                ),
                                width: getHorizontalSize(
                                  375,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 10,
                                    top: 32,
                                    right: 10,
                                    bottom: 32,
                                  ),
                                  decoration: AppDecoration
                                      .gradientnameblack900opacity073nameblack900opacity0,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          190,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          top: 206,
                                        ),
                                        child: Text(
                                          "Fashion\nsale",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .displayMediumOnPrimaryContainer,
                                        ),
                                      ),
                                      CustomElevatedButton(
                                        text: "Check",
                                        margin: getMargin(
                                          top: 18,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .outlineRed8003fTL18
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          getHorizontalSize(
                                            160,
                                          ),
                                          getVerticalSize(
                                            36,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer,
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 13,
                      top: 31,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                            bottom: 2,
                          ),
                          child: Text(
                            "View all",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                    top: 5,
                  ),
                  child: Text(
                    "You’ve never seen it before!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    288,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 14,
                      top: 22,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: getHorizontalSize(
                          17,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MainPageItemWidget();
                    },
                  ),
                ),
              ],
            ),
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
