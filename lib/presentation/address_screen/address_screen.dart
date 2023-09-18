import '../address_screen/widgets/address_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class AddressScreen extends StatelessWidget {const AddressScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 15, bottom: 16), onTap: () {onTapArrowleft20(context);}), title: AppbarSubtitle1(text: "Address", margin: getMargin(left: 12))), body: Padding(padding: getPadding(left: 16, top: 17, right: 16), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(18));}, itemCount: 2, itemBuilder: (context, index) {return AddressItemWidget();})), bottomNavigationBar: CustomElevatedButton(text: "Add Address", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.outlinePrimaryTL5.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft20(BuildContext context) { Navigator.pop(context); } 
 }
