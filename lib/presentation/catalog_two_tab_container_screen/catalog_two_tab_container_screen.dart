import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/presentation/cart_page/cart_page.dart';import 'package:flutterqa/presentation/catalog_two_page/catalog_two_page.dart';import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';import 'package:flutterqa/presentation/explore_page/explore_page.dart';import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_bottom_bar.dart';class CatalogTwoTabContainerScreen extends StatefulWidget {const CatalogTwoTabContainerScreen({Key? key}) : super(key: key);

@override CatalogTwoTabContainerScreenState createState() =>  CatalogTwoTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class CatalogTwoTabContainerScreenState extends State<CatalogTwoTabContainerScreen> with  TickerProviderStateMixin {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft29(context);}), centerTitle: true, title: AppbarSubtitle(text: "Women’s tops"), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgBaselinesearch24pxGray900, margin: getMargin(left: 11, right: 11))])), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(left: 16, top: 8), decoration: AppDecoration.outline1, child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [SizedBox(height: getVerticalSize(30), width: getHorizontalSize(315), child: TabBar(controller: tabviewController, tabs: [Tab(child: Text("T-shirts", overflow: TextOverflow.ellipsis)), Tab(child: Text("Crop tops", overflow: TextOverflow.ellipsis)), Tab(child: Text("Blouses", overflow: TextOverflow.ellipsis))])), Container(width: getHorizontalSize(100), margin: getMargin(left: 8), padding: getPadding(left: 30, top: 7, right: 30, bottom: 7), decoration: AppDecoration.txtFill2.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder15), child: Text("Shirts", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallOnPrimaryContainer))])), SizedBox(height: getVerticalSize(603), child: TabBarView(controller: tabviewController, children: [CatalogTwoPage(), CatalogTwoPage(), CatalogTwoPage()]))])])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardContainerPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.myProfileMyOrdersOrderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dashboardContainerPage: return DashboardContainerPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.myProfileMyOrdersOrderDetailsPage: return MyProfileMyOrdersOrderDetailsPage(); default: return DefaultWidget();} } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft29(BuildContext context) { Navigator.pop(context); } 
 }
