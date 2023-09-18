import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GriddressiconItemWidget extends StatelessWidget {
  const GriddressiconItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 70,
          width: 70,
          padding: getPadding(
            all: 23,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgDressicon,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 8,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallPoppinsBluegray30010.copyWith(
              letterSpacing: getHorizontalSize(
                0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
