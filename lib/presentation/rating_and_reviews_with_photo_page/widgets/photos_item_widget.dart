import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  const PhotosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage2104x104,
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
    );
  }
}
