import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';

class FavoritesListsTabContainerScreen extends StatefulWidget {
  const FavoritesListsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FavoritesListsTabContainerScreenState createState() =>
      FavoritesListsTabContainerScreenState();
}

class FavoritesListsTabContainerScreenState
    extends State<FavoritesListsTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
                  192,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          192,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: appTheme.gray50,
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.black900.withOpacity(0.12),
                              spreadRadius: getHorizontalSize(
                                2,
                              ),
                              blurRadius: getHorizontalSize(
                                2,
                              ),
                              offset: Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 14,
                          top: 8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgBaselinesearch24pxGray900,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                right: 11,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 27,
                                ),
                                child: Text(
                                  "Favorites",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 14,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(
                                      30,
                                    ),
                                    width: getHorizontalSize(
                                      325,
                                    ),
                                    child: TabBar(
                                      controller: tabviewController,
                                      tabs: [
                                        Tab(
                                          child: Text(
                                            "Summer",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "T-Shirts",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "Shirts",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
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
                  ],
                ),
              ),
              SizedBox(
                height: getVerticalSize(
                  547,
                ),
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    FavoritesListsPage(),
                    FavoritesListsPage(),
                    FavoritesListsPage(),
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
