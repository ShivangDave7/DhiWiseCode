import '../my_bag_screen/widgets/my_bag_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/cart_page/cart_page.dart';
import 'package:flutterqa/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:flutterqa/presentation/explore_page/explore_page.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:flutterqa/presentation/offer_screen_page/offer_screen_page.dart';
import 'package:flutterqa/widgets/custom_bottom_bar.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

class MyBagScreen extends StatelessWidget {
  MyBagScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController promocodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 8,
            right: 11,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 31,
                ),
                child: Text(
                  "My Bag",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              Spacer(),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 5,
                  ),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(
                          24,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MyBagItemWidget();
                    },
                  ),
                ),
              ),
              CustomTextFormField(
                controller: promocodeController,
                margin: getMargin(
                  left: 5,
                  right: 5,
                ),
                contentPadding: getPadding(
                  left: 20,
                  top: 11,
                  bottom: 11,
                ),
                textStyle: CustomTextStyles.titleSmallGray500,
                hintText: "Enter your promo code",
                hintStyle: CustomTextStyles.titleSmallGray500,
                suffix: Container(
                  padding: getPadding(
                    all: 6,
                  ),
                  margin: getMargin(
                    left: 12,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray900,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        18,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    36,
                  ),
                ),
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                defaultBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900LR35,
                enabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900LR35,
                focusedBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900LR35,
                disabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBlack900LR35,
              ),
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 28,
                  right: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 2,
                      ),
                      child: Text(
                        "Total amount:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray500,
                      ),
                    ),
                    Text(
                      "124",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "CHECK OUT",
                margin: getMargin(
                  left: 5,
                  top: 27,
                  right: 5,
                ),
                buttonStyle: CustomButtonStyles.outlineRed8003f.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    48,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Offer:
        return AppRoutes.offerScreenPage;
      case BottomBarEnum.Account:
        return AppRoutes.myProfileMyOrdersOrderDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardContainerPage:
        return DashboardContainerPage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.offerScreenPage:
        return OfferScreenPage();
      case AppRoutes.myProfileMyOrdersOrderDetailsPage:
        return MyProfileMyOrdersOrderDetailsPage();
      default:
        return DefaultWidget();
    }
  }
}
