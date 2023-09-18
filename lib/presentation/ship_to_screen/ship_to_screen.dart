import '../ship_to_screen/widgets/ship_to_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class ShipToScreen extends StatelessWidget {const ShipToScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getVerticalSize(28), width: getHorizontalSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 13, bottom: 14), onTap: () {onTapArrowleft12(context);}), title: AppbarSubtitle1(text: "Ship To", margin: getMargin(left: 12)), actions: [AppbarImage(height: getVerticalSize(28), width: getHorizontalSize(24), svgPath: ImageConstant.imgPlusicon, margin: getMargin(left: 16, top: 13, right: 16, bottom: 14))]), body: Padding(padding: getPadding(left: 16, top: 4, right: 16), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(22));}, itemCount: 3, itemBuilder: (context, index) {return ShipToItemWidget();})), bottomNavigationBar: CustomElevatedButton(text: "Next", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.outlinePrimaryTL5.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer, onTap: () {onTapNext(context);}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft12(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the paymentMethodScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the paymentMethodScreen.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentMethodScreen); } 
 }
