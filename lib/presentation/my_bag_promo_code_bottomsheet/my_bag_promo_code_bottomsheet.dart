import '../my_bag_promo_code_bottomsheet/widgets/my_bagpromo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyBagPromoCodeBottomsheet extends StatelessWidget {
  MyBagPromoCodeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController promocodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Expanded(
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 14,
            right: 16,
            bottom: 14,
          ),
          decoration: AppDecoration.background.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL34,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: getHorizontalSize(
                    60,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      6,
                    ),
                    thickness: getVerticalSize(
                      6,
                    ),
                    color: appTheme.gray500,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: promocodeController,
                margin: getMargin(
                  top: 32,
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
                  top: 32,
                ),
                child: Text(
                  "Your Promo Codes",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 21,
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
                      return MyBagpromoItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
