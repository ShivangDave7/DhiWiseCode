import '../catalog_one_page/widgets/catalog_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CatalogOnePage extends StatefulWidget {
  const CatalogOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  CatalogOnePageState createState() => CatalogOnePageState();
}

class CatalogOnePageState extends State<CatalogOnePage>
    with AutomaticKeepAliveClientMixin<CatalogOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                        left: 15,
                        top: 18,
                        right: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: getMargin(
                              left: 1,
                            ),
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
                                  svgPath: ImageConstant.imgView,
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
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return CatalogOneItemWidget();
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
