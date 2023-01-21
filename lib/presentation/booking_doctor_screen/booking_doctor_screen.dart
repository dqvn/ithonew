import 'controller/booking_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_icon_button.dart';

class BookingDoctorScreen extends GetWidget<BookingDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgReply,
                    margin: getMargin(left: 24)),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_appointment".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: getPadding(all: 8),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle959,
                                height: getSize(115.00),
                                width: getSize(115.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8.00))),
                            Padding(
                                padding: getPadding(
                                    left: 15, top: 8, right: 22, bottom: 6),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_horizon".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewaySemiBold18Gray90001
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("lbl_chardiologist".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayMedium14Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(18.00),
                                                width: getSize(18.00),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 3),
                                                child: Text("lbl_4_7".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayMedium135
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))))
                                          ])),
                                      Padding(
                                          padding: getPadding(left: 20, top: 8),
                                          child: Text("lbl_800m_away".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayMedium14Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_date".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00)))),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRegular14Blue60001
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup48,
                                height: getSize(36.00),
                                width: getSize(36.00)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text("msg_wednesday_jun_23".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewaySemiBold14Gray70001
                                        .copyWith(
                                            height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(327.00),
                          margin: getMargin(top: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10002)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_reason".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00)))),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRegular14Blue60001
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(children: [
                            CustomIconButton(
                                height: 36,
                                width: 36,
                                shape: IconButtonShape.CircleBorder18,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLinkBlue600)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text("lbl_chest_pain".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewaySemiBold14Gray90001
                                        .copyWith(
                                            height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(327.00),
                          margin: getMargin(top: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10002)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("lbl_payment_detail".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewaySemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(top: 12, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_consultation".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRegular14Bluegray300
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Text("lbl_60_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular14Gray90001
                                        .copyWith(
                                            height: getVerticalSize(1.00)))
                              ])),
                      Padding(
                          padding: getPadding(top: 11, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_admin_fee".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRegular14Bluegray300
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Text("lbl_01_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular14Gray90001
                                        .copyWith(
                                            height: getVerticalSize(1.00)))
                              ])),
                      Padding(
                          padding: getPadding(top: 11, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("msg_aditional_discount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRegular14Bluegray300
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00)))),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRegular14Gray70001
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Padding(
                          padding: getPadding(top: 10, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewaySemiBold14Gray90001
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Text("lbl_61_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewaySemiBold14Blue60001
                                        .copyWith(
                                            height: getVerticalSize(1.00)))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(319.00),
                          margin: getMargin(top: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10002)),
                      Padding(
                          padding: getPadding(left: 2, top: 17),
                          child: Text("lbl_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewaySemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          margin: getMargin(top: 13, bottom: 4),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBluegray501.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("lbl_visa".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Indigo900
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00)))),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 2),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular12
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 3, bottom: 5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayMedium14Bluegray300
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_61_002".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewaySemiBold18Gray90001
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      CustomButton(
                          height: 50,
                          width: 192,
                          text: "lbl_book_now".tr,
                          fontStyle: ButtonFontStyle.RalewaySemiBold14,
                          onTap: onTapBooknow)
                    ]))));
  }

  onTapBooknow() {
    Get.toNamed(AppRoutes.locationScreen);
  }
}
