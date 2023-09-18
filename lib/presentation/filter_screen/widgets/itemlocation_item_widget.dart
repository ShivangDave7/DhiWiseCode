import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore: must_be_immutable
class ItemlocationItemWidget extends StatelessWidget {
  const ItemlocationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: getPadding(
          left: 16,
          right: 16,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "US Only",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: appTheme.blueGray300,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.blue50,
            width: getHorizontalSize(
              1,
            ),
          ),
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              5,
            ),
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
