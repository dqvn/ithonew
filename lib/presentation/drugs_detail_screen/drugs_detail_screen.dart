import 'controller/drugs_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_icon_button.dart';

class DrugsDetailScreen extends GetWidget<DrugsDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgReply,
            margin: getMargin(
              left: 24,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle3(
            text: "lbl_details".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgCart,
              margin: getMargin(
                left: 24,
                top: 9,
                right: 24,
                bottom: 7,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHealthvitllys163x163,
                height: getSize(
                  163.00,
                ),
                width: getSize(
                  163.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    81.00,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 59,
                ),
                child: Text(
                  "lbl_obh_combi".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold20.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "lbl_75ml".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold16Gray500.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemSize: getVerticalSize(
                          14.00,
                        ),
                        itemCount: 4,
                        updateOnDrag: true,
                        onRatingUpdate: (rating) {},
                        itemBuilder: (context, _) {
                          return Icon(
                            Icons.star,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                      ),
                      child: Text(
                        "lbl_4_0".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewaySemiBold14Amber500.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 28,
                  right: 6,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCarGray500,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 23,
                        top: 2,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewaySemiBold24.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      margin: getMargin(
                        left: 28,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "lbl_9_99".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewaySemiBold26.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 40,
                ),
                child: Text(
                  "lbl_description".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold16Gray90001.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  328.00,
                ),
                margin: getMargin(
                  left: 1,
                  top: 10,
                  bottom: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_obh_combi_is_a2".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#898a8d"),
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            1.38,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_read_more".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#227dde"),
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.38,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 20,
            right: 20,
            bottom: 28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 50,
                width: 50,
                shape: IconButtonShape.RoundedBorder8,
                padding: IconButtonPadding.PaddingAll13,
                child: CustomImageView(
                  svgPath: ImageConstant.imgCartBlue600,
                ),
              ),
              CustomButton(
                height: 50,
                width: 266,
                text: "lbl_buy_now".tr,
                margin: getMargin(
                  left: 19,
                ),
                fontStyle: ButtonFontStyle.RalewaySemiBold14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
