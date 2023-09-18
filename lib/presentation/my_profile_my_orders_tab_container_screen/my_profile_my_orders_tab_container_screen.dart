import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/presentation/cart_page/cart_page.dart';import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';import 'package:flutterqa/presentation/explore_page/explore_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_bottom_bar.dart';class MyProfileMyOrdersTabContainerScreen extends StatefulWidget {const MyProfileMyOrdersTabContainerScreen({Key? key}) : super(key: key);

@override MyProfileMyOrdersTabContainerScreenState createState() =>  MyProfileMyOrdersTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersTabContainerScreenState extends State<MyProfileMyOrdersTabContainerScreen> with  TickerProviderStateMixin {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, appBar: CustomAppBar(height: getVerticalSize(40), leadingWidth: 33, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 9, top: 8, bottom: 8), onTap: () {onTapArrowleft41(context);}), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgBaselinesearch24pxGray900, margin: getMargin(left: 11, top: 8, right: 11, bottom: 8))]), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 14, top: 23), child: Text("My Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall)), Container(height: getVerticalSize(30), width: getHorizontalSize(323), margin: getMargin(left: 14, top: 24), child: TabBar(controller: tabviewController, labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), labelStyle: TextStyle(), unselectedLabelColor: appTheme.gray900, unselectedLabelStyle: TextStyle(), indicator: BoxDecoration(color: appTheme.gray900, borderRadius: BorderRadius.circular(getHorizontalSize(15))), tabs: [Tab(child: Text("Delivered", overflow: TextOverflow.ellipsis)), Tab(child: Text("Processing", overflow: TextOverflow.ellipsis)), Tab(child: Text("Cancelled", overflow: TextOverflow.ellipsis))])), Expanded(child: SizedBox(height: getVerticalSize(535), child: TabBarView(controller: tabviewController, children: [MyProfileMyOrdersPage(), MyProfileMyOrdersPage(), MyProfileMyOrdersPage()])))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardContainerPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.myProfileMyOrdersOrderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dashboardContainerPage: return DashboardContainerPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.myProfileMyOrdersOrderDetailsPage: return MyProfileMyOrdersOrderDetailsPage(); default: return DefaultWidget();} } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft41(BuildContext context) { Navigator.pop(context); } 
 }
