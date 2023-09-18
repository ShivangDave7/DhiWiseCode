import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class ClientsReviewItemWidget extends StatelessWidget {
  const ClientsReviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(
        104,
      ),
      width: getSize(
        104,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage13,
            height: getSize(
              104,
            ),
            width: getSize(
              104,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                4,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgIconGray900,
            height: getVerticalSize(
              32,
            ),
            width: getHorizontalSize(
              33,
            ),
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
