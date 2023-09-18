import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class MainThreeItemWidget extends StatelessWidget {
  const MainThreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 55,
        right: 15,
        bottom: 55,
      ),
      decoration: AppDecoration.fill,
      child: Padding(
        padding: getPadding(
          bottom: 3,
        ),
        child: Text(
          "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.displaySmallRed700,
        ),
      ),
    );
  }
}
