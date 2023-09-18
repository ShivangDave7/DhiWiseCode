import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_checkbox_button.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_icon_button.dart';import 'package:flutterqa/widgets/custom_outlined_button.dart';import 'package:flutterqa/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class FiltersListScreen extends StatelessWidget {FiltersListScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

bool isCheckbox = false;

bool isCheckbox1 = false;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft31(context);}), centerTitle: true, title: AppbarSubtitle(text: "Brand"))), Container(padding: getPadding(left: 16, top: 21, right: 16, bottom: 21), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(controller: searchController, hintText: "Search", hintStyle: CustomTextStyles.bodyLargeGray500, textStyle: CustomTextStyles.bodyLargeGray500, prefix: Container(margin: getMargin(left: 15, top: 13, right: 12, bottom: 13), child: CustomImageView(svgPath: ImageConstant.imgSearchBlueGray40001)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(40)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {searchController.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600))), filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), contentPadding: getPadding(top: 12, right: 30, bottom: 12), defaultBorderDecoration: SearchViewStyleHelper.outlineBlack900, enabledBorderDecoration: SearchViewStyleHelper.outlineBlack900, focusedBorderDecoration: SearchViewStyleHelper.outlineBlack900, disabledBorderDecoration: SearchViewStyleHelper.outlineBlack900), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("adidas", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), CustomImageView(svgPath: ImageConstant.imgMobile, height: getSize(20), width: getSize(20))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2, bottom: 1), child: Text("adidas Originals", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumRed700)), CustomIconButton(height: 20, width: 20, padding: getPadding(all: 2), decoration: IconButtonStyleHelper.fillRed700, child: CustomImageView(svgPath: ImageConstant.imgCheckmarkOnprimarycontainer20x20))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("Blend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), CustomImageView(svgPath: ImageConstant.imgMobile, height: getSize(20), width: getSize(20))])), CustomCheckboxButton(width: getHorizontalSize(343), text: "Boutique Moschino", value: isCheckbox, margin: getMargin(top: 28), padding: getPadding(top: 1, bottom: 1), textStyle: theme.textTheme.bodyLarge!, isRightCheck: true, onChange: (value) {isCheckbox = value;}), CustomCheckboxButton(width: getHorizontalSize(343), text: "Champion", value: isCheckbox1, margin: getMargin(top: 28), padding: getPadding(top: 1, bottom: 1), textStyle: theme.textTheme.bodyLarge!, isRightCheck: true, onChange: (value) {isCheckbox1 = value;}), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("Diesel", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), CustomImageView(svgPath: ImageConstant.imgMobile, height: getSize(20), width: getSize(20))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("Jack & Jones", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumRed700)), CustomIconButton(height: 20, width: 20, padding: getPadding(all: 2), decoration: IconButtonStyleHelper.fillRed700, child: CustomImageView(svgPath: ImageConstant.imgCheckmarkOnprimarycontainer20x20))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("Naf Naf", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), CustomImageView(svgPath: ImageConstant.imgMobile, height: getSize(20), width: getSize(20))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("Red Valentino", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), CustomImageView(svgPath: ImageConstant.imgMobile, height: getSize(20), width: getSize(20))])), Padding(padding: getPadding(top: 28, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 2), child: Text("s.Oliver", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumRed700)), CustomIconButton(height: 20, width: 20, padding: getPadding(all: 2), decoration: IconButtonStyleHelper.fillRed700, child: CustomImageView(svgPath: ImageConstant.imgCheckmarkOnprimarycontainer20x20))]))]))])), bottomNavigationBar: Container(margin: getMargin(left: 16, right: 16, bottom: 48), decoration: AppDecoration.outline2, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "Discard", margin: getMargin(right: 11), buttonStyle: CustomButtonStyles.outlineGray900.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(36)))), buttonTextStyle: theme.textTheme.titleSmall!)), Expanded(child: CustomElevatedButton(text: "Apply", margin: getMargin(left: 11), buttonStyle: CustomButtonStyles.outlineRed8003fTL18.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(36)))), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft31(BuildContext context) { Navigator.pop(context); } 
 }
