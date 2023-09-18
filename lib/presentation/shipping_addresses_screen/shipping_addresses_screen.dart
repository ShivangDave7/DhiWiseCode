import '../shipping_addresses_screen/widgets/shipping_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_floating_button.dart';class ShippingAddressesScreen extends StatelessWidget {const ShippingAddressesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft39(context);}), centerTitle: true, title: AppbarSubtitle(text: "Shipping Addresses"))), Expanded(child: Padding(padding: getPadding(left: 16, top: 36, right: 16, bottom: 36), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: 3, itemBuilder: (context, index) {return ShippingItemWidget();})))])), floatingActionButton: CustomFloatingButton(height: 36, width: 36, backgroundColor: appTheme.gray900, child: CustomImageView(svgPath: ImageConstant.imgGrid, height: getVerticalSize(18.0), width: getHorizontalSize(18.0))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft39(BuildContext context) { Navigator.pop(context); } 
 }
