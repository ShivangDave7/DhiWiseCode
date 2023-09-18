import '../filters_screen/widgets/chipviewtagsele_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:flutterqa/widgets/custom_outlined_button.dart';class FiltersScreen extends StatelessWidget {const FiltersScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outline, child: CustomAppBar(height: getVerticalSize(28), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftOnprimary, margin: getMargin(left: 8), onTap: () {onTapArrowleft30(context);}), centerTitle: true, title: AppbarSubtitle(text: "Filters"))), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, padding: getPadding(left: 16, top: 11, right: 16, bottom: 11), decoration: AppDecoration.txtBackground, child: Text("Price range", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(left: 16, top: 26, right: 16), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("78", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall), Text("143", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)]), Container(height: getVerticalSize(22), width: getHorizontalSize(343), margin: getMargin(top: 1), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(3), width: getHorizontalSize(343), margin: getMargin(bottom: 7), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(width: getHorizontalSize(343), child: Divider(height: getVerticalSize(3), thickness: getVerticalSize(3), color: appTheme.gray500))), Align(alignment: Alignment.centerLeft, child: SizedBox(width: getHorizontalSize(230), child: Divider(height: getVerticalSize(3), thickness: getVerticalSize(3), color: appTheme.red700, indent: getHorizontalSize(101))))]))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 100), child: Row(children: [Container(height: getSize(22), width: getSize(22), decoration: BoxDecoration(color: appTheme.red700, borderRadius: BorderRadius.circular(getHorizontalSize(11)))), Container(height: getSize(22), width: getSize(22), margin: getMargin(left: 86), decoration: BoxDecoration(color: appTheme.red700, borderRadius: BorderRadius.circular(getHorizontalSize(11))))])))]))])), Container(width: double.maxFinite, margin: getMargin(top: 24), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.txtBackground, child: Text("Colors", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(left: 16, top: 24), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgSearchRed700, height: getSize(44), width: getSize(44)), CustomImageView(svgPath: ImageConstant.imgColor, height: getSize(36), width: getSize(36), margin: getMargin(left: 20, top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgUserRed90001, height: getSize(36), width: getSize(36), margin: getMargin(left: 20, top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgColorGray40001, height: getSize(36), width: getSize(36), margin: getMargin(left: 20, top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgSettings, height: getSize(44), width: getSize(44), margin: getMargin(left: 20)), CustomImageView(svgPath: ImageConstant.imgCloseOnprimary, height: getSize(36), width: getSize(36), margin: getMargin(left: 20, top: 4, bottom: 4))])), Container(width: double.maxFinite, margin: getMargin(top: 24), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.txtBackground, child: Text("Sizes", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 16, top: 24), child: Row(children: [Container(width: getSize(40), padding: getPadding(left: 10, top: 12, right: 10, bottom: 12), decoration: AppDecoration.txtWhite.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("XS", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), Container(width: getSize(40), margin: getMargin(left: 16), padding: getPadding(left: 15, top: 12, right: 15, bottom: 12), decoration: AppDecoration.txtFill3.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("S", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallOnPrimaryContainer)), Container(width: getSize(40), margin: getMargin(left: 16), padding: getPadding(left: 13, top: 12, right: 13, bottom: 12), decoration: AppDecoration.txtFill3.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("M", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallOnPrimaryContainer)), Container(width: getSize(40), margin: getMargin(left: 16), padding: getPadding(left: 15, top: 12, right: 15, bottom: 12), decoration: AppDecoration.txtWhite.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("L", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall)), Container(width: getSize(40), margin: getMargin(left: 16), padding: getPadding(left: 10, top: 12, right: 10, bottom: 12), decoration: AppDecoration.txtWhite.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("XL", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall))]))), Container(width: double.maxFinite, margin: getMargin(top: 24), padding: getPadding(left: 16, top: 11, right: 16, bottom: 11), decoration: AppDecoration.txtBackground, child: Text("Category", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 24), child: Wrap(runSpacing: getVerticalSize(5), spacing: getHorizontalSize(5), children: List<Widget>.generate(5, (index) => ChipviewtagseleItemWidget()))), Container(height: getVerticalSize(148), width: double.maxFinite, margin: getMargin(top: 24), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: getPadding(left: 16, top: 13, right: 16, bottom: 13), decoration: AppDecoration.background, child: Padding(padding: getPadding(bottom: 14), child: Text("Brand", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)))), Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: getMargin(top: 44), padding: getPadding(top: 20, bottom: 20), decoration: AppDecoration.outline2, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: CustomOutlinedButton(text: "Discard", margin: getMargin(right: 11, bottom: 28), buttonStyle: CustomButtonStyles.outlineGray900.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(36)))), buttonTextStyle: theme.textTheme.titleSmall!)), Expanded(child: CustomElevatedButton(text: "Apply", margin: getMargin(left: 11, bottom: 28), buttonStyle: CustomButtonStyles.outlineRed8003fTL18.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(36)))), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 16, top: 33), child: Text("adidas Originals, Jack & Jones, s.Oliver", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall)))]))])])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft30(BuildContext context) { Navigator.pop(context); } 
 }
