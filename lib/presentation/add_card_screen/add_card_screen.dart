import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {AddCardScreen({Key? key}) : super(key: key);

TextEditingController cardnumberoneController = TextEditingController();

TextEditingController expirationdateController = TextEditingController();

TextEditingController securitycodeController = TextEditingController();

TextEditingController cardnumbertwoController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 15, bottom: 16), onTap: () {onTapArrowleft20(context);}), title: AppbarSubtitle1(text: "Add Card", margin: getMargin(left: 12))), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 27, right: 16, bottom: 27), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Card Number", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5))), CustomTextFormField(controller: cardnumberoneController, margin: getMargin(top: 12), contentPadding: getPadding(left: 12, top: 15, right: 12, bottom: 15), textStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, hintText: "Enter Card Number", hintStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, textInputAction: TextInputAction.next, textInputType: TextInputType.number, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1)), Padding(padding: getPadding(top: 24), child: Text("Expiration Date", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), CustomTextFormField(controller: expirationdateController, margin: getMargin(top: 11), contentPadding: getPadding(left: 16, top: 15, right: 16, bottom: 15), textStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, hintText: "Expiration Date", hintStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, textInputAction: TextInputAction.next, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1)), Padding(padding: getPadding(top: 29), child: Text("Security Code", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), CustomTextFormField(controller: securitycodeController, margin: getMargin(top: 11), contentPadding: getPadding(left: 16, top: 15, right: 16, bottom: 15), textStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, hintText: "Security Code", hintStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, textInputAction: TextInputAction.next, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1)), Padding(padding: getPadding(top: 23), child: Text("Card Holder", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), CustomTextFormField(controller: cardnumbertwoController, margin: getMargin(top: 12, bottom: 5), contentPadding: getPadding(left: 12, top: 15, right: 12, bottom: 15), textStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, hintText: "Enter Card Number", hintStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, textInputType: TextInputType.number, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1))]))), bottomNavigationBar: CustomElevatedButton(text: "Add Card", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.outlinePrimaryTL5.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer, onTap: () {onTapAddcard(context);}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft20(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the creditCardAndDebitScreen.
onTapAddcard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen); } 
 }
