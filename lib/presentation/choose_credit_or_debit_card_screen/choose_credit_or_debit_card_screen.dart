import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class ChooseCreditOrDebitCardScreen extends StatelessWidget {ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

int sliderIndex = 1;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 15, bottom: 16), onTap: () {onTapArrowleft14(context);}), title: AppbarSubtitle1(text: "Choose Card", margin: getMargin(left: 12)), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgPlusicon, margin: getMargin(left: 16, top: 15, right: 16, bottom: 16))]), body: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 27, right: 16, bottom: 27), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(190), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return SlidervolumeItemWidget();}), Container(height: getVerticalSize(8), margin: getMargin(top: 16, bottom: 5), child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blue50, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8))))])), bottomNavigationBar: CustomElevatedButton(text: "Pay 766.86", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.outlinePrimaryTL5.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer, onTap: () {onTapPay766eightysix(context);}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft14(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the successScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the successScreen.
onTapPay766eightysix(BuildContext context) { Navigator.pushNamed(context, AppRoutes.successScreen); } 
 }
