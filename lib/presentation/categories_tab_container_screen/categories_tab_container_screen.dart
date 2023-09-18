import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/presentation/cart_page/cart_page.dart';import 'package:flutterqa/presentation/categories_page/categories_page.dart';import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';import 'package:flutterqa/presentation/explore_page/explore_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_bottom_bar.dart';class CategoriesTabContainerScreen extends StatefulWidget {const CategoriesTabContainerScreen({Key? key}) : super(key: key);

@override CategoriesTabContainerScreenState createState() =>  CategoriesTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class CategoriesTabContainerScreenState extends State<CategoriesTabContainerScreen> with  TickerProviderStateMixin {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft28(context);}), centerTitle: true, title: AppbarSubtitle(text: "Categories"), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgBaselinesearch24pxGray900, margin: getMargin(left: 11, right: 11))])), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(44), width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1)), child: TabBar(controller: tabviewController, labelColor: appTheme.gray900, labelStyle: TextStyle(), unselectedLabelColor: appTheme.gray900, unselectedLabelStyle: TextStyle(), indicatorColor: appTheme.red700, tabs: [Tab(child: Text("Women", overflow: TextOverflow.ellipsis)), Tab(child: Text("Men", overflow: TextOverflow.ellipsis)), Tab(child: Text("Kids", overflow: TextOverflow.ellipsis))])), Expanded(child: SizedBox(height: getVerticalSize(597), child: TabBarView(controller: tabviewController, children: [CategoriesPage(), CategoriesPage(), CategoriesPage()])))])])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardContainerPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.myProfileMyOrdersOrderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dashboardContainerPage: return DashboardContainerPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.myProfileMyOrdersOrderDetailsPage: return MyProfileMyOrdersOrderDetailsPage(); default: return DefaultWidget();} } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft28(BuildContext context) { Navigator.pop(context); } 
 }
