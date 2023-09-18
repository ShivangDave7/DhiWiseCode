import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/presentation/client_s_review_page/client_s_review_page.dart';

class ClientSReviewTabContainerScreen extends StatefulWidget {
  const ClientSReviewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ClientSReviewTabContainerScreenState createState() =>
      ClientSReviewTabContainerScreenState();
}

class ClientSReviewTabContainerScreenState
    extends State<ClientSReviewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Expanded(
            child: Container(
              decoration: AppDecoration.background.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  SizedBox(
                    width: getHorizontalSize(
                      60,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        6,
                      ),
                      thickness: getVerticalSize(
                        6,
                      ),
                      color: appTheme.gray500,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Text(
                      "What is you rate?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      36,
                    ),
                    width: getHorizontalSize(
                      276,
                    ),
                    margin: getMargin(
                      top: 18,
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      tabs: [
                        Tab(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              36,
                            ),
                            width: getSize(
                              36,
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              36,
                            ),
                            width: getSize(
                              36,
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              36,
                            ),
                            width: getSize(
                              36,
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              36,
                            ),
                            width: getSize(
                              36,
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStarGray50036x36,
                            height: getSize(
                              36,
                            ),
                            width: getSize(
                              36,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(
                      529,
                    ),
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        ClientSReviewPage(),
                        ClientSReviewPage(),
                        ClientSReviewPage(),
                        ClientSReviewPage(),
                        ClientSReviewPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
