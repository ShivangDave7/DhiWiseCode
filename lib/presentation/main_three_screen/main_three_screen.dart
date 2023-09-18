import '../main_three_screen/widgets/main_three_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';

class MainThreeScreen extends StatelessWidget {
  MainThreeScreen({Key? key})
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
              SizedBox(
                height: getVerticalSize(
                  322,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage4322x375,
                      height: getVerticalSize(
                        322,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 18,
                          top: 29,
                          right: 18,
                          bottom: 29,
                        ),
                        decoration: AppDecoration
                            .gradientnameblack900opacity073namegray400opacity0,
                        child: Padding(
                          padding: getPadding(
                            top: 229,
                          ),
                          child: Text(
                            "New collection",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles
                                .displaySmallOnPrimaryContainer_1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Expanded(
                          child: Padding(
                            padding: getPadding(
                              bottom: 1,
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
                                    1,
                                  ),
                                );
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return MainThreeItemWidget();
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getVerticalSize(
                          374,
                        ),
                        width: getHorizontalSize(
                          188,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage2374x188,
                              height: getVerticalSize(
                                374,
                              ),
                              width: getHorizontalSize(
                                188,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: getMargin(
                                  bottom: 72,
                                ),
                                padding: getPadding(
                                  left: 18,
                                  top: 52,
                                  right: 18,
                                  bottom: 52,
                                ),
                                decoration: AppDecoration
                                    .gradientnameblack900opacity0nameblack900opacity0,
                                child: Container(
                                  width: getHorizontalSize(
                                    133,
                                  ),
                                  margin: getMargin(
                                    bottom: 27,
                                  ),
                                  child: Text(
                                    "Men’s\nhoodies",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .displaySmallOnPrimaryContainer_1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
