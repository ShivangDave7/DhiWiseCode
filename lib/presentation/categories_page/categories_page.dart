import '../categories_page/widgets/categories_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesPageState createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage>
    with AutomaticKeepAliveClientMixin<CategoriesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Padding(
            padding: getPadding(
              left: 15,
              top: 16,
              right: 15,
            ),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: getVerticalSize(
                    16,
                  ),
                );
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return CategoriesItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
