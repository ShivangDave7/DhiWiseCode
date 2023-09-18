import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class ForgotPasswordOneScreen extends StatelessWidget {ForgotPasswordOneScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 8, top: 8, right: 75), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [CustomAppBar(height: getVerticalSize(24), leadingWidth: 375, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8, right: 343), onTap: () {onTapArrowleft24(context);})), Padding(padding: getPadding(top: 31), child: Text("Forgot password", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall))])), Container(padding: getPadding(left: 15, top: 88, right: 15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(332), margin: getMargin(right: 12), child: Text("Please, enter your email address. You will receive a link to create a new password via email.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), Padding(padding: getPadding(left: 1, top: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomFloatingTextField(controller: emailController, textStyle: CustomTextStyles.titleSmallBluegray900, hintText: "Email", hintStyle: CustomTextStyles.titleSmallBluegray900, labelText: "Email", labelStyle: CustomTextStyles.titleSmallBluegray900, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 21, right: 21), child: CustomImageView(svgPath: ImageConstant.imgOutlineclose24px)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(64)), filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), contentPadding: getPadding(left: 20, top: 31, right: 20, bottom: 18), defaultBorderDecoration: FloatingTextFormFieldStyleHelper.outlineDeeporangeA700TL4, enabledBorderDecoration: FloatingTextFormFieldStyleHelper.outlineDeeporangeA700TL4, focusedBorderDecoration: FloatingTextFormFieldStyleHelper.outlineDeeporangeA700TL4, disabledBorderDecoration: FloatingTextFormFieldStyleHelper.outlineDeeporangeA700TL4), Padding(padding: getPadding(left: 20, top: 4), child: Text("Not a valid email address. Should be your@email.com", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallDeeporangeA700))])), CustomElevatedButton(text: "SEND", margin: getMargin(left: 1, top: 54, bottom: 5), buttonStyle: CustomButtonStyles.outlineRed8003f.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer)]))]))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft24(BuildContext context) { Navigator.pop(context); } 
 }
