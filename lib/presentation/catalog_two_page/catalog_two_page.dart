import '../catalog_two_page/widgets/catalog_two_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CatalogTwoPage extends StatefulWidget {
  const CatalogTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  CatalogTwoPageState createState() => CatalogTwoPageState();
}

class CatalogTwoPageState extends State<CatalogTwoPage>
    with AutomaticKeepAliveClientMixin<CatalogTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 18,
                        right: 16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: AppDecoration.background,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBaselinefilterlist24px,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                    top: 5,
                                    bottom: 7,
                                  ),
                                  child: Text(
                                    "Filters",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallGray900,
                                  ),
                                ),
                                Spacer(
                                  flex: 48,
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBaselineswapvert24px,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: Text(
                                    "Price: lowest to high",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallGray900,
                                  ),
                                ),
                                Spacer(
                                  flex: 51,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgViewGray900,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                top: 26,
                              ),
                              child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(
                                    263,
                                  ),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(
                                    18,
                                  ),
                                  crossAxisSpacing: getHorizontalSize(
                                    18,
                                  ),
                                ),
                                physics: BouncingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return CatalogTwoItemWidget();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
