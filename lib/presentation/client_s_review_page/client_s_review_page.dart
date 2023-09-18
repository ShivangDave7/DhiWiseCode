import '../client_s_review_page/widgets/clients_review_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterqa/core/app_export.dart';
import 'package:flutterqa/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewPage extends StatefulWidget {
  const ClientSReviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  ClientSReviewPageState createState() => ClientSReviewPageState();
}

class ClientSReviewPageState extends State<ClientSReviewPage>
    with AutomaticKeepAliveClientMixin<ClientSReviewPage> {
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
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 33,
                    right: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(
                          227,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Please share your opinion\n",
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                              TextSpan(
                                text: "about the product",
                                style: CustomTextStyles.titleMedium18_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          343,
                        ),
                        margin: getMargin(
                          top: 17,
                        ),
                        padding: getPadding(
                          left: 18,
                          top: 15,
                          right: 18,
                          bottom: 15,
                        ),
                        decoration: AppDecoration.outline4.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: getHorizontalSize(
                              301,
                            ),
                            margin: getMargin(
                              right: 5,
                            ),
                            child: Text(
                              "I’m super happy with these! I’ve never bought jeans online before and I didn’t think they’d even fit, but it turns out they fit pretty perfectly. I got a size 28- I’m 5’6” and weigh about 127 lbs. They are tight but not suffocating ...",
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMediumGray900_1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getVerticalSize(
                          143,
                        ),
                        child: ListView.separated(
                          padding: getPadding(
                            top: 39,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: getHorizontalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ClientsReviewItemWidget();
                          },
                        ),
                      ),
                      CustomElevatedButton(
                        text: "SEND REVIEW",
                        margin: getMargin(
                          top: 44,
                        ),
                        buttonStyle:
                            CustomButtonStyles.outlineRed8003f.copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          getVerticalSize(
                            48,
                          ),
                        ))),
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOnPrimaryContainer,
                      ),
                    ],
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
