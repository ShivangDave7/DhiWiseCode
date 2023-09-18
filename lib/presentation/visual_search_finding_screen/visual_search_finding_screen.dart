import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

class VisualSearchFindingScreen extends StatelessWidget {
  const VisualSearchFindingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSearchRed70045x45,
                height: getSize(
                  45,
                ),
                width: getSize(
                  45,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  247,
                ),
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
                child: Text(
                  "Finding similar results...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
