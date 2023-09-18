import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class MyBagCheckoutScreen extends StatelessWidget {const MyBagCheckoutScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft35(context);}), centerTitle: true, title: AppbarSubtitle(text: "Checkout"))), Container(padding: getPadding(left: 16, top: 25, right: 16, bottom: 25), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 6), child: Text("Shipping address", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Container(margin: getMargin(top: 20), padding: getPadding(left: 23, top: 20, right: 23, bottom: 20), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(left: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 1), child: Text("Jane Doe", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), Text("Change", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallRed700)])), Container(width: getHorizontalSize(235), margin: getMargin(left: 5, top: 11, right: 57, bottom: 2), child: Text("3 Newbridge Court \r\nChino Hills, CA 91709, United States", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumGray900))])), Padding(padding: getPadding(top: 57, right: 23), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Payment", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Text("Change", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallRed700)])), Padding(padding: getPadding(top: 16), child: Row(children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.onPrimaryContainer.withOpacity(1), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(38), width: getHorizontalSize(64), padding: getPadding(left: 16, top: 6, right: 16, bottom: 6), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgMastercard, height: getVerticalSize(25), width: getHorizontalSize(32), alignment: Alignment.center)]))), Padding(padding: getPadding(left: 17, top: 13, bottom: 10), child: Text("**** **** **** 3947", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumGray900))])), Padding(padding: getPadding(top: 51), child: Text("Delivery method", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: getMargin(right: 11), padding: getPadding(left: 19, top: 15, right: 19, bottom: 15), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgLayer1, height: getVerticalSize(17), width: getHorizontalSize(61)), Padding(padding: getPadding(top: 11, right: 5), child: Text(" 2-3 days", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))]))), Expanded(child: Container(margin: getMargin(left: 11, right: 11), padding: getPadding(left: 9, top: 15, right: 9, bottom: 15), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(svgPath: ImageConstant.imgCar, height: getVerticalSize(10), width: getHorizontalSize(82), margin: getMargin(top: 8)), Padding(padding: getPadding(top: 11), child: Text(" 2-3 days", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))]))), Expanded(child: Container(margin: getMargin(left: 11), padding: getPadding(left: 14, top: 15, right: 14, bottom: 15), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgTelevision, height: getVerticalSize(16), width: getHorizontalSize(71), margin: getMargin(top: 2)), Padding(padding: getPadding(top: 11, right: 11), child: Text(" 2-3 days", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))])))])), Padding(padding: getPadding(top: 52, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("Order:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallGray500)), Text("112", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)])), Padding(padding: getPadding(top: 18, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2), child: Text("Delivery:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallGray500)), Text("15", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)])), Padding(padding: getPadding(top: 17, right: 4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 3), child: Text("Summary:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumGray500)), Text("127", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMedium18)]))]))])), bottomNavigationBar: CustomElevatedButton(text: "SUBMIT ORDER", margin: getMargin(left: 16, right: 16, bottom: 47), buttonStyle: CustomButtonStyles.outlineRed8003f.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft35(BuildContext context) { Navigator.pop(context); } 
 }
