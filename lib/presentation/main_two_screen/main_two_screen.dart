import '../main_two_screen/widgets/listdiscount_item_widget.dart';
import '../main_two_screen/widgets/listtype_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';

class MainTwoScreen extends StatelessWidget {
  MainTwoScreen({Key? key})
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
                    152,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: getVerticalSize(
                          152,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: getVerticalSize(
                            152,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPexelsphoto911677,
                                height: getVerticalSize(
                                  152,
                                ),
                                width: getHorizontalSize(
                                  375,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    bottom: 27,
                                  ),
                                  child: Text(
                                    "Street clothes",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .displaySmallOnPrimaryContainer,
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
                      left: 18,
                      top: 35,
                      right: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sale",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                            bottom: 7,
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
                    left: 18,
                    top: 6,
                  ),
                  child: Text(
                    "Super summer sale",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    287,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: getHorizontalSize(
                          19,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListdiscountItemWidget();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 15,
                      top: 38,
                      right: 15,
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
                    left: 18,
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
                      left: 17,
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
                      return ListtypeItemWidget();
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
