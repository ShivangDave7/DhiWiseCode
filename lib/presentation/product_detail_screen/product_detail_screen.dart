import '../product_detail_screen/widgets/products_item_widget.dart';import '../product_detail_screen/widgets/sizes_item_widget.dart';import '../product_detail_screen/widgets/slider_item_widget.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:flutter_rating_bar/flutter_rating_bar.dart';import 'package:flutterqa/core/app_export.dart';import 'package:flutterqa/widgets/app_bar/appbar_image.dart';import 'package:flutterqa/widgets/app_bar/appbar_subtitle_1.dart';import 'package:flutterqa/widgets/app_bar/custom_app_bar.dart';import 'package:flutterqa/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class ProductDetailScreen extends StatelessWidget {ProductDetailScreen({Key? key}) : super(key: key);

int sliderIndex = 1;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlueGray300, margin: getMargin(left: 16, top: 16, bottom: 15), onTap: () {onTapArrowleft3(context);}), title: AppbarSubtitle1(text: "Nike Air Max 270 Rea...", margin: getMargin(left: 12)), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgNavexplore, margin: getMargin(left: 16, top: 16, right: 15), onTap: () {onTapSearchicon1(context);}), AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgMoreicon, margin: getMargin(left: 16, top: 16, right: 31))]), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 12), child: Padding(padding: getPadding(bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(238), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return SliderItemWidget();}), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(8), margin: getMargin(top: 16), child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blue50, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8))))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 16, top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: SizedBox(width: getHorizontalSize(275), child: Text("Nike Air Zoom Pegasus 36 Miami", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargePoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5))))), CustomImageView(svgPath: ImageConstant.imgDownload, height: getSize(24), width: getSize(24), margin: getMargin(left: 44, top: 2, bottom: 32))]))), Padding(padding: getPadding(left: 16, top: 9), child: RatingBar.builder(initialRating: 0, minRating: 0, direction: Axis.horizontal, allowHalfRating: false, itemSize: getVerticalSize(16), unratedColor: appTheme.blue50, itemCount: 1, updateOnDrag: true, onRatingUpdate: (rating) {}, itemBuilder: (context, _) {return Icon(Icons.star, color: appTheme.yellow700);})), Padding(padding: getPadding(left: 16, top: 16), child: Text("299,43", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargePoppinsPrimary.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(left: 16, top: 22), child: Text("Select Size", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), Align(alignment: Alignment.centerRight, child: SizedBox(height: getVerticalSize(61), child: ListView.separated(padding: getPadding(left: 16, top: 13), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: getHorizontalSize(16));}, itemCount: 6, itemBuilder: (context, index) {return SizesItemWidget();}))), Padding(padding: getPadding(left: 16, top: 23), child: Text("Select Color", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), CustomImageView(imagePath: ImageConstant.imgColors, height: getVerticalSize(48), width: getHorizontalSize(359), margin: getMargin(left: 16, top: 12)), Padding(padding: getPadding(left: 16, top: 24), child: Text("Specification", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 16, top: 12), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(bottom: 45), child: Text("Shown:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), SizedBox(width: getHorizontalSize(169), child: Text("Laser Blue/Anthracite/Watermelon/White", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5))))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 16, top: 18, right: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("Style:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5)))), Text("CD0113-400", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))]))), Container(width: getHorizontalSize(320), margin: getMargin(left: 16, top: 19, right: 38), child: Text("The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.", maxLines: 4, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 16, top: 23, right: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Review Product", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5))), GestureDetector(onTap: () {onTapTxtSeemorelink(context);}, child: Text("See More", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimary.copyWith(letterSpacing: getHorizontalSize(0.5))))]))), Padding(padding: getPadding(left: 16, top: 8), child: Row(children: [RatingBar.builder(initialRating: 4, minRating: 0, direction: Axis.horizontal, allowHalfRating: false, itemSize: getVerticalSize(16), unratedColor: appTheme.blue50, itemCount: 5, updateOnDrag: true, onRatingUpdate: (rating) {}, itemBuilder: (context, _) {return Icon(Icons.star, color: appTheme.yellow700);}), Padding(padding: getPadding(left: 8), child: Text("4.5", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelMediumBluegray300.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(left: 3), child: Text("(5 Review)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(letterSpacing: getHorizontalSize(0.5))))])), Padding(padding: getPadding(left: 16, top: 16), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgProfilepicture, height: getSize(48), width: getSize(48), radius: BorderRadius.circular(getHorizontalSize(24))), Padding(padding: getPadding(left: 16, top: 2, bottom: 4), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("James Lawson", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.5))), Padding(padding: getPadding(top: 4), child: RatingBar.builder(initialRating: 0, minRating: 0, direction: Axis.horizontal, allowHalfRating: false, itemSize: getVerticalSize(16), unratedColor: appTheme.blue50, itemCount: 1, updateOnDrag: true, onRatingUpdate: (rating) {}, itemBuilder: (context, _) {return Icon(Icons.star, color: appTheme.yellow700);}))]))])), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(339), margin: getMargin(left: 16, top: 18, right: 19), child: Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.", maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(letterSpacing: getHorizontalSize(0.5))))), SizedBox(height: getVerticalSize(88), child: ListView.separated(padding: getPadding(left: 16, top: 16, right: 16), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: getHorizontalSize(12));}, itemCount: 3, itemBuilder: (context, index) {return ProductsItemWidget();})), Padding(padding: getPadding(left: 16, top: 16), child: Text("December 10, 2016", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(left: 16, top: 23), child: Text("You Might Also Like", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(letterSpacing: getHorizontalSize(0.07)))), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: getPadding(left: 16, top: 11), child: IntrinsicWidth(child: Container(padding: getPadding(left: 157, right: 157), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Container(padding: getPadding(all: 16), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgProductimage, height: getSize(109), width: getSize(109), radius: BorderRadius.circular(getHorizontalSize(5))), Container(width: getHorizontalSize(105), margin: getMargin(top: 7, right: 3), child: Text("FS - Nike Air Max 270 React...", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 11), child: Text("299,43", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargePrimary_1.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 9), child: Row(children: [Text("534,33", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(letterSpacing: getHorizontalSize(0.5), decoration: TextDecoration.lineThrough)), Padding(padding: getPadding(left: 8), child: Text("24% Off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium!.copyWith(letterSpacing: getHorizontalSize(0.5))))]))]))), Expanded(child: Container(margin: getMargin(left: 16), padding: getPadding(all: 16), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgProductimage109x109, height: getSize(109), width: getSize(109), radius: BorderRadius.circular(getHorizontalSize(5))), Container(width: getHorizontalSize(84), margin: getMargin(top: 8, right: 24), child: Text("FS - QUILTED MAXI CROS...", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 11), child: Text("299,43", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargePrimary_1.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 9), child: Row(children: [Text("534,33", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(letterSpacing: getHorizontalSize(0.5), decoration: TextDecoration.lineThrough)), Padding(padding: getPadding(left: 8), child: Text("24% Off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium!.copyWith(letterSpacing: getHorizontalSize(0.5))))]))])))])), Expanded(child: Container(padding: getPadding(all: 16), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgProductimage1, height: getSize(109), width: getSize(109), radius: BorderRadius.circular(getHorizontalSize(5))), Container(width: getHorizontalSize(109), margin: getMargin(top: 7), child: Text("FS - Nike Air Max 270 React...", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge!.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 11), child: Text("299,43", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargePrimary_1.copyWith(letterSpacing: getHorizontalSize(0.5)))), Padding(padding: getPadding(top: 9), child: Row(children: [Text("534,33", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(letterSpacing: getHorizontalSize(0.5), decoration: TextDecoration.lineThrough)), Padding(padding: getPadding(left: 8), child: Text("24% Off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium!.copyWith(letterSpacing: getHorizontalSize(0.5))))]))])))]))))])))), bottomNavigationBar: CustomElevatedButton(text: "Add To Cart", margin: getMargin(left: 16, right: 16, bottom: 50), buttonStyle: CustomButtonStyles.outlinePrimaryTL5.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(57)))), buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnPrimaryContainer))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft3(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the searchScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the searchScreen.
onTapSearchicon1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 
/// Navigates to the reviewProductScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the reviewProductScreen.
onTapTxtSeemorelink(BuildContext context) { Navigator.pushNamed(context, AppRoutes.reviewProductScreen); } 
 }
