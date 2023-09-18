import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';class ShortByScreen extends StatelessWidget {const ShortByScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(67), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 14, bottom: 17), onTap: () {onTapArrowleft9(context);}), title: AppbarSubtitle1(text: "Short By", margin: getMargin(left: 12))), body: Container(width: double.maxFinite, padding: getPadding(top: 10, bottom: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Best Match", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargePrimary_1.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill1, child: Text("Time: ending soonest", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Time: newly listed", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Price + Shipping: lowest first", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Price + Shipping: highest first", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, margin: getMargin(bottom: 5), padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Distance: nearest first", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5))))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft9(BuildContext context) { Navigator.pop(context); } 
 }
