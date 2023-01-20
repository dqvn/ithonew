import '../doctor_detail_screen/widgets/doctor_detail_item_widget.dart';
import 'controller/doctor_detail_controller.dart';
import 'models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_icon_button.dart';

class DoctorDetailScreen extends GetWidget<DoctorDetailController> {
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
            text: "lbl_doctor_detail".tr,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 24,
            top: 32,
            right: 24,
            bottom: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle959,
                    height: getSize(
                      115.00,
                    ),
                    width: getSize(
                      115.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 8,
                      bottom: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_dr_marcus_horizon".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewaySemiBold18.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "lbl_chardiologist".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayMedium14Gray500.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgStar,
                                height: getSize(
                                  18.00,
                                ),
                                width: getSize(
                                  18.00,
                                ),
                                margin: getMargin(
                                  bottom: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_4_7".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayMedium135.copyWith(
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
                            left: 20,
                            top: 8,
                          ),
                          child: Text(
                            "lbl_800m_away".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayMedium14Gray500.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "lbl_about".tr,
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
                  305.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_lorem_ipsum_dolor2".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#717784"),
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
              Container(
                height: getVerticalSize(
                  268.00,
                ),
                width: getHorizontalSize(
                  327.00,
                ),
                margin: getMargin(
                  top: 32,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: getHorizontalSize(
                          103.00,
                        ),
                        margin: getMargin(
                          bottom: 2,
                        ),
                        padding: getPadding(
                          left: 25,
                          top: 10,
                          right: 25,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.txtOutlineGray10001.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder15,
                        ),
                        child: Text(
                          "lbl_08_00_pm".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular12.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 12,
                                  top: 13,
                                  right: 12,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "lbl_mon".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular10
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_21".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold18
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 12,
                                ),
                                padding: getPadding(
                                  left: 11,
                                  top: 13,
                                  right: 11,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                        top: 1,
                                      ),
                                      child: Text(
                                        "lbl_tue".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular10
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_22".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold18
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 11,
                                ),
                                padding: getPadding(
                                  all: 11,
                                ),
                                decoration: AppDecoration.fillBlue600.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_wed".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRegular10WhiteA700
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_23".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewaySemiBold18WhiteA700
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 11,
                                ),
                                padding: getPadding(
                                  left: 11,
                                  top: 12,
                                  right: 11,
                                  bottom: 12,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_thu".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular10
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_24".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold18
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 11,
                                ),
                                padding: getPadding(
                                  all: 11,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_fri".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular10
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_25".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold18
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 6,
                                ),
                                padding: getPadding(
                                  left: 11,
                                  top: 14,
                                  right: 11,
                                  bottom: 14,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                      ),
                                      child: Text(
                                        "lbl_sat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular10
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "lbl_26".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold18
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: getMargin(
                              top: 32,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.blueGray50,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 32,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      14.00,
                                    ),
                                  );
                                },
                                itemCount: controller.doctorDetailModelObj.value
                                    .doctorDetailItemList.length,
                                itemBuilder: (context, index) {
                                  DoctorDetailItemModel model = controller
                                      .doctorDetailModelObj
                                      .value
                                      .doctorDetailItemList[index];
                                  return DoctorDetailItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 14,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    103.00,
                                  ),
                                  padding: getPadding(
                                    left: 25,
                                    top: 10,
                                    right: 25,
                                    bottom: 10,
                                  ),
                                  decoration: AppDecoration
                                      .txtOutlineBluegray10001
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder15,
                                  ),
                                  child: Text(
                                    "lbl_04_00_pm".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular12Gray90001
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    103.00,
                                  ),
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  padding: getPadding(
                                    left: 25,
                                    top: 10,
                                    right: 25,
                                    bottom: 10,
                                  ),
                                  decoration: AppDecoration
                                      .txtOutlineBluegray10001
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder15,
                                  ),
                                  child: Text(
                                    "lbl_07_00_pm".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular12Gray90001
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 24,
            right: 24,
            bottom: 28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 50,
                width: 50,
                variant: IconButtonVariant.FillBlue50,
                shape: IconButtonShape.RoundedBorder8,
                padding: IconButtonPadding.PaddingAll13,
                child: CustomImageView(
                  svgPath: ImageConstant.imgCarBlue600,
                ),
              ),
              CustomButton(
                height: 50,
                width: 266,
                text: "lbl_book_apointment".tr,
                margin: getMargin(
                  left: 11,
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
