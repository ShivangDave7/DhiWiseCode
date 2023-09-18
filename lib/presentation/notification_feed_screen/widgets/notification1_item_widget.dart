import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class Notification1ItemWidget extends StatelessWidget {
  const Notification1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "New Product",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.titleSmallPoppinsPrimaryContainer.copyWith(
            letterSpacing: getHorizontalSize(
              0.5,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 6,
          ),
          child: Text(
            "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallPoppinsBluegray30012.copyWith(
              letterSpacing: getHorizontalSize(
                0.5,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 4,
          ),
          child: Text(
            "June 3, 2015 5:06 PM",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallPoppinsPrimaryContainer10.copyWith(
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
