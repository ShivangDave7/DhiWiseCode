import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';class CreditCardAndDebitScreen extends StatelessWidget {const CreditCardAndDebitScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 16, bottom: 15), onTap: () {onTapArrowleft(context);}), title: AppbarSubtitle1(text: "Credit Card And Debit", margin: getMargin(left: 12))), body: Padding(padding: getPadding(left: 16, top: 8, right: 16), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(14));}, itemCount: 2, itemBuilder: (context, index) {return ListvolumeItemWidget(onTapCreditcard: () {onTapCreditcard(context);});})), bottomNavigationBar: CustomElevatedButton(text: "Add Card", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.fillBlack900.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer, onTap: () {onTapAddcard(context);}))); } 
/// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the lailyfaFebrinaCardScreen.
onTapCreditcard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.lailyfaFebrinaCardScreen); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addCardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the addCardScreen.
onTapAddcard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addCardScreen); } 
 }
