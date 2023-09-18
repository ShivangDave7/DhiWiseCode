import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_switch.dart';import 'package:flutterqa/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class MyProfileSettingsScreen extends StatelessWidget {MyProfileSettingsScreen({Key? key}) : super(key: key);

TextEditingController fullnameController = TextEditingController();

TextEditingController hiddenatmnoController = TextEditingController();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(40), leadingWidth: 33, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 9, top: 8, bottom: 8), onTap: () {onTapArrowleft43(context);}), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgBaselinesearch24pxGray900, margin: getMargin(left: 11, top: 8, right: 11, bottom: 8))]), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 14, top: 22, right: 14, bottom: 22), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Settings", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall), Padding(padding: getPadding(left: 2, top: 22), child: Text("Personal Information", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: fullnameController, margin: getMargin(left: 2, top: 21), contentPadding: getPadding(left: 20, top: 25, right: 20, bottom: 25), textStyle: CustomTextStyles.titleSmallGray500, hintText: "Full name", hintStyle: CustomTextStyles.titleSmallGray500, textInputAction: TextInputAction.next, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, disabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900), Container(width: getHorizontalSize(343), margin: getMargin(left: 2, top: 24, right: 2), padding: getPadding(left: 20, top: 13, right: 20, bottom: 13), decoration: AppDecoration.outline4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Date of Birth", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall), Padding(padding: getPadding(top: 7, bottom: 4), child: Text("12/12/1989", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumGray900))])), Padding(padding: getPadding(left: 2, top: 54, right: 2), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Password", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Padding(padding: getPadding(top: 2), child: Text("Change", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallGray500))])), CustomTextFormField(controller: hiddenatmnoController, margin: getMargin(left: 2, top: 20), contentPadding: getPadding(all: 20), textStyle: CustomTextStyles.bodyMediumGray900, hintText: "****************", hintStyle: CustomTextStyles.bodyMediumGray900, textInputType: TextInputType.visiblePassword, obscureText: true, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlack900, disabledBorderDecoration: TextFormFieldStyleHelper.outlineBlack900), Padding(padding: getPadding(left: 2, top: 54), child: Text("Notifications", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(left: 2, top: 23, right: 2), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("Sales", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])), Padding(padding: getPadding(left: 2, top: 24, right: 2), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("New arrivals", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})])), Padding(padding: getPadding(left: 2, top: 24, right: 2, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 3, bottom: 2), child: Text("Delivery status changes", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch2, onChange: (value) {isSelectedSwitch2 = value;})]))]))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft43(BuildContext context) { Navigator.pop(context); } 
 }
