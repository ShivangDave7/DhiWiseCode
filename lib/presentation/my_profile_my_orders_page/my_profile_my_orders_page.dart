import '../my_profile_my_orders_page/widgets/listorder194703_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersPage extends StatefulWidget {
  const MyProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyProfileMyOrdersPageState createState() => MyProfileMyOrdersPageState();
}

class MyProfileMyOrdersPageState extends State<MyProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<MyProfileMyOrdersPage> {
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
              top: 30,
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
                    24,
                  ),
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Listorder194703ItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
