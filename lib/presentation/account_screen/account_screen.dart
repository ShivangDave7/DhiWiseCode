import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/presentation/cart_page/cart_page.dart';import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';import 'package:flutterqa/presentation/explore_page/explore_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_bottom_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class AccountScreen extends StatelessWidget {AccountScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(66), title: AppbarSubtitle1(text: "Account", margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgNotificationicon, margin: getMargin(left: 13, top: 15, right: 13, bottom: 16), onTap: () {onTapNotificationico4(context);})]), body: Container(width: double.maxFinite, padding: getPadding(top: 11, bottom: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(text: "Profile", leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgUser)), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!, onTap: () {onTapProfile(context);}), Container(width: double.maxFinite, padding: getPadding(all: 16), decoration: AppDecoration.fill5, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgBagicon, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 16, top: 2, bottom: 3), child: Text("Order", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5))))])), Container(width: double.maxFinite, padding: getPadding(all: 16), decoration: AppDecoration.fill, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgLocation, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 16, top: 2, bottom: 3), child: Text("Address", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5))))])), CustomElevatedButton(text: "Payment", margin: getMargin(bottom: 5), leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgCreditCardIcon)), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!, onTap: () {onTapPayment(context);})])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardContainerPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.myProfileMyOrdersOrderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dashboardContainerPage: return DashboardContainerPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.myProfileMyOrdersOrderDetailsPage: return MyProfileMyOrdersOrderDetailsPage(); default: return DefaultWidget();} } 
/// Navigates to the notificationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the notificationScreen.
onTapNotificationico4(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
/// Navigates to the profileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the profileScreen.
onTapProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
/// Navigates to the addPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the addPaymentScreen.
onTapPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addPaymentScreen); } 
 }
