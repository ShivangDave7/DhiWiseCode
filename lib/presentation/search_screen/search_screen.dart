import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {SearchScreen({Key? key}) : super(key: key);

TextEditingController shoeoneController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(67), title: CustomTextFormField(width: getHorizontalSize(291), controller: shoeoneController, margin: getMargin(left: 16), contentPadding: getPadding(top: 13, bottom: 13), textStyle: CustomTextStyles.labelLargePrimaryContainer, hintText: "Nike Air Max", hintStyle: CustomTextStyles.labelLargePrimaryContainer, textInputAction: TextInputAction.next, prefix: Container(margin: getMargin(left: 16, top: 12, right: 8, bottom: 16), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(44)), suffix: Container(margin: getMargin(left: 30, top: 12, right: 16, bottom: 12), child: CustomImageView(svgPath: ImageConstant.imgClearIcon)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(44)), defaultBorderDecoration: TextFormFieldStyleHelper.outlinePrimary, enabledBorderDecoration: TextFormFieldStyleHelper.outlinePrimary, focusedBorderDecoration: TextFormFieldStyleHelper.outlinePrimary, disabledBorderDecoration: TextFormFieldStyleHelper.outlinePrimary), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgMicicon, margin: getMargin(all: 16))]), body: Container(width: double.maxFinite, padding: getPadding(top: 11, bottom: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blue50, indent: getHorizontalSize(6)), CustomElevatedButton(text: "Nike Air Max 270 React ENG ", margin: getMargin(top: 9), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(54)))), buttonTextStyle: CustomTextStyles.bodySmallPoppinsBluegray30012, onTap: () {onTapNikeairmax(context);}), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Nike Air Vapormax 360", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Nike Air Max 270 React ENG ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Nike Air Max 270 React", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Nike Air VaporMax Flyknit 3", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))), Container(width: double.maxFinite, margin: getMargin(bottom: 5), padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtFill, child: Text("Nike Air Max 97 Utility", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5))))])))); } 
/// Navigates to the searchResultScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the searchResultScreen.
onTapNikeairmax(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchResultScreen); } 
 }
