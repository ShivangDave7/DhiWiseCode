import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.titleMediumPoppinsPrimaryContainer.copyWith(
            letterSpacing: getHorizontalSize(
              0.5,
            ),
            color: theme.colorScheme.primaryContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
