import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/presentation/cart_page/cart_page.dart';import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';import 'package:flutterqa/presentation/explore_page/explore_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class VisualSearchTakingAPhotoScreen extends StatelessWidget {VisualSearchTakingAPhotoScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.outline2, child: Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft24(context);}), centerTitle: true, title: AppbarSubtitle(text: "Search by taking a photo")))), CustomImageView(imagePath: ImageConstant.imgD3bdd2cbe99a1c4, height: getVerticalSize(618), width: getHorizontalSize(375))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardContainerPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.myProfileMyOrdersOrderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dashboardContainerPage: return DashboardContainerPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.myProfileMyOrdersOrderDetailsPage: return MyProfileMyOrdersOrderDetailsPage(); default: return DefaultWidget();} } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft24(BuildContext context) { Navigator.pop(context); } 
 }
