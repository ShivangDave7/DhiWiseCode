import '../favorite_product_screen/widgets/favorite_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';class FavoriteProductScreen extends StatelessWidget {const FavoriteProductScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 16, bottom: 15), onTap: () {onTapArrowleft2(context);}), title: AppbarSubtitle1(text: "Favorite Product", margin: getMargin(left: 12))), body: Padding(padding: getPadding(left: 16, top: 8, right: 16), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(283), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(13), crossAxisSpacing: getHorizontalSize(13)), physics: BouncingScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return FavoriteItemWidget(onTapProduct: () {onTapProduct(context);});})))); } 
/// Navigates to the productDetailScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the productDetailScreen.
onTapProduct(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailScreen); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft2(BuildContext context) { Navigator.pop(context); } 
 }
