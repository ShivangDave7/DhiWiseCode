import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class NotificationScreen extends StatelessWidget {const NotificationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(65), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 16, bottom: 15), onTap: () {onTapArrowleft6(context);}), title: AppbarSubtitle1(text: "Notification", margin: getMargin(left: 12))), body: Container(width: double.maxFinite, padding: getPadding(top: 12, bottom: 12), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(text: "Offer", leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgOffer)), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!, onTap: () {onTapOffer(context);}), CustomElevatedButton(text: "Feed", leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgListIcon)), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!), CustomElevatedButton(text: "Acivity", margin: getMargin(bottom: 5), leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgNotificationIconPrimary)), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!, onTap: () {onTapAcivity(context);})])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft6(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the notificationOfferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the notificationOfferScreen.
onTapOffer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationOfferScreen); } 
/// Navigates to the notificationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the notificationOneScreen.
onTapAcivity(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationOneScreen); } 
 }
