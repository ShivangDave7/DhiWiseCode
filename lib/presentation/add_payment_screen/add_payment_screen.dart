import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class AddPaymentScreen extends StatelessWidget {const AddPaymentScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(67), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 14, bottom: 17), onTap: () {onTapArrowleft21(context);}), title: AppbarSubtitle1(text: "Payment", margin: getMargin(left: 12))), body: Container(width: double.maxFinite, padding: getPadding(top: 10, bottom: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(text: "Credit Card Or Debit", leftIcon: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgCreditCardIcon)), buttonStyle: CustomButtonStyles.fillBlue50.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(56)))), buttonTextStyle: theme.textTheme.labelLarge!, onTap: () {onTapCreditcardor(context);}), Container(width: double.maxFinite, padding: getPadding(all: 16), decoration: AppDecoration.fill, child: Row(children: [CustomImageView(svgPath: ImageConstant.imgPaypalicon, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 16, top: 4), child: Text("Paypal", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5))))])), Container(width: double.maxFinite, margin: getMargin(bottom: 5), padding: getPadding(all: 16), decoration: AppDecoration.fill, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgAirplanePrimary, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 16, top: 2, bottom: 3), child: Text("Bank Transfer", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5))))]))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft21(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the creditCardAndDebitScreen.
onTapCreditcardor(BuildContext context) { Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen); } 
 }
