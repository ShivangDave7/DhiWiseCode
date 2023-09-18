import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_floating_text_field.dart';import 'package:flutterqa/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {SignUpPageScreen({Key? key}) : super(key: key);

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(all: 8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleftOnprimary, height: getSize(24), width: getSize(24), onTap: () {onTapImgArrowleft(context);}), Padding(padding: getPadding(left: 6, top: 30), child: Text("Sign up", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall))]), CustomFloatingTextField(margin: getMargin(left: 8, top: 73, right: 8), controller: nameController, textStyle: CustomTextStyles.titleSmallBluegray900, hintText: "Name", hintStyle: CustomTextStyles.titleSmallBluegray900, labelText: "Name", labelStyle: CustomTextStyles.titleSmallBluegray900, textInputAction: TextInputAction.next, suffix: Container(margin: getMargin(left: 21, right: 21), child: CustomImageView(svgPath: ImageConstant.imgOutlinecheck24px)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(64)), filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), contentPadding: getPadding(left: 20, top: 31, right: 20, bottom: 18)), CustomFloatingTextField(margin: getMargin(left: 8, top: 8, right: 8), controller: emailController, textStyle: CustomTextStyles.titleSmallBluegray900, hintText: "Email", hintStyle: CustomTextStyles.titleSmallBluegray900, labelText: "Email", labelStyle: CustomTextStyles.titleSmallBluegray900, textInputAction: TextInputAction.next, textInputType: TextInputType.emailAddress, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), contentPadding: getPadding(left: 20, top: 31, right: 20, bottom: 18)), CustomFloatingTextField(margin: getMargin(left: 8, top: 8, right: 8), controller: passwordController, textStyle: CustomTextStyles.titleSmallGray500, hintText: "Password", hintStyle: CustomTextStyles.titleSmallGray500, labelText: "Password", labelStyle: CustomTextStyles.titleSmallGray500, textInputType: TextInputType.visiblePassword, obscureText: true, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), contentPadding: getPadding(left: 20, top: 24, right: 20, bottom: 25)), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 14, right: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 5, bottom: 4), child: Text("Already have an account?", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), CustomImageView(svgPath: ImageConstant.imgRoundarrowrightalt24px, height: getSize(24), width: getSize(24), margin: getMargin(left: 4))]))), CustomElevatedButton(text: "SIGN UP", margin: getMargin(left: 8, top: 26, right: 8), buttonStyle: CustomButtonStyles.outlineRed8003f.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer), Spacer(), Align(alignment: Alignment.center, child: Padding(padding: getPadding(bottom: 6), child: Text("Or sign up with social account", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)))]))), bottomNavigationBar: Padding(padding: getPadding(left: 88, bottom: 57), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 64, width: 92, padding: getPadding(all: 20), decoration: IconButtonStyleHelper.outlineBlack900TL241, child: CustomImageView(svgPath: ImageConstant.imgGoogle)), CustomIconButton(height: 64, width: 92, margin: getMargin(left: 16), padding: getPadding(all: 20), decoration: IconButtonStyleHelper.outlineBlack900TL241, child: CustomImageView(svgPath: ImageConstant.imgFacebook))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgArrowleft(BuildContext context) { Navigator.pop(context); } 
 }
