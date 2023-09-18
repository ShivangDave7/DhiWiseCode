import '../notification_one_screen/widgets/notification2_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';class NotificationOneScreen extends StatelessWidget {const NotificationOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 15, bottom: 16), onTap: () {onTapArrowleft7(context);}), title: AppbarSubtitle1(text: "Activity", margin: getMargin(left: 12))), body: Padding(padding: getPadding(top: 11), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(1));}, itemCount: 3, itemBuilder: (context, index) {return Notification2ItemWidget(onTapImgArrowleft: () {onTapImgArrowleft(context);});})))); } 
/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgArrowleft(BuildContext context) { Navigator.pop(context); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft7(BuildContext context) { Navigator.pop(context); } 
 }
