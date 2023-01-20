import 'controller/chat_with_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

class ChatWithDoctorScreen extends GetWidget<ChatWithDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 54,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgReply,
            margin: getMargin(
              left: 14,
            ),
          ),
          centerTitle: true,
          title: Row(
            children: [
              AppbarSubtitle3(
                text: "msg_dr_marcus_horizon".tr,
                margin: getMargin(
                  left: 9,
                  top: 9,
                  bottom: 11,
                ),
              ),
              AppbarImage(
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
                svgPath: ImageConstant.imgVideocamera,
                margin: getMargin(
                  left: 72,
                  top: 10,
                  bottom: 10,
                ),
              ),
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              svgPath: ImageConstant.imgCallGray90001,
              margin: getMargin(
                left: 15,
                top: 10,
                bottom: 10,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 20,
                top: 12,
                right: 20,
                bottom: 12,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 24,
            top: 42,
            right: 24,
            bottom: 42,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  327.00,
                ),
                margin: getMargin(
                  top: 7,
                ),
                padding: getPadding(
                  left: 40,
                  top: 17,
                  right: 40,
                  bottom: 17,
                ),
                decoration: AppDecoration.outlineGray200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_consultion_start".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewaySemiBold16Blue600.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "msg_you_can_consult".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayMedium12Gray500.copyWith(
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
                  top: 20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPexelscedricf40x40,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 3,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_dr_marcus_horizon".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRalewaySemiBold14Gray90001.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "lbl_10_min_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium10.copyWith(
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
              Container(
                width: getHorizontalSize(
                  205.00,
                ),
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 15,
                  top: 9,
                  right: 15,
                  bottom: 9,
                ),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_hello_how_can_i".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRegular14Gray700.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: getMargin(
                    left: 90,
                    top: 15,
                  ),
                  padding: getPadding(
                    all: 6,
                  ),
                  decoration: AppDecoration.fillBlue600.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          200.00,
                        ),
                        margin: getMargin(
                          top: 6,
                          bottom: 3,
                        ),
                        child: Text(
                          "msg_i_have_suffering".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular14WhiteA700.copyWith(
                            height: getVerticalSize(
                              1.22,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmarkWhiteA700,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          top: 54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 15,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPexelscedricf40x39,
                      height: getVerticalSize(
                        40.00,
                      ),
                      width: getHorizontalSize(
                        39.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 3,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_dr_marcus_horizon".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRalewaySemiBold14Gray90001.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "lbl_5_min_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium10.copyWith(
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
              Container(
                width: getHorizontalSize(
                  221.00,
                ),
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 13,
                  top: 10,
                  right: 13,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        186.00,
                      ),
                      child: Text(
                        "msg_ok_do_you_have".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular14Gray700.copyWith(
                          height: getVerticalSize(
                            1.22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: getMargin(
                    left: 90,
                    top: 15,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 6,
                    right: 5,
                    bottom: 6,
                  ),
                  decoration: AppDecoration.fillBlue600.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          165.00,
                        ),
                        margin: getMargin(
                          top: 4,
                          bottom: 1,
                        ),
                        child: Text(
                          "msg_i_don_t_have_any2".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular14WhiteA700.copyWith(
                            height: getVerticalSize(
                              1.22,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmarkWhiteA700,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          left: 36,
                          top: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 15,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPexelscedricf40x39,
                      height: getVerticalSize(
                        40.00,
                      ),
                      width: getHorizontalSize(
                        39.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 3,
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_dr_marcus_horizon".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRalewaySemiBold14Gray90001.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "lbl_online".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium10.copyWith(
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
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 10,
                ),
                color: ColorConstant.gray200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.customBorderBL5,
                ),
                child: Container(
                  height: getVerticalSize(
                    22.00,
                  ),
                  width: getHorizontalSize(
                    58.00,
                  ),
                  padding: getPadding(
                    left: 13,
                    top: 8,
                    right: 13,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray200.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL5,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGroup141,
                        height: getVerticalSize(
                          5.00,
                        ),
                        width: getHorizontalSize(
                          32.00,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 24,
            right: 24,
            bottom: 26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                width: 207,
                focusNode: FocusNode(),
                controller: controller.typemessageController,
                hintText: "msg_type_message".tr,
                variant: TextFormFieldVariant.OutlineBluegray50,
                padding: TextFormFieldPadding.PaddingT14,
                fontStyle: TextFormFieldFontStyle.RalewayRegular14,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 15,
                    right: 17,
                    bottom: 15,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMenu,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50.00,
                  ),
                ),
              ),
              CustomButton(
                height: 50,
                width: 111,
                text: "lbl_send".tr,
                margin: getMargin(
                  left: 9,
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
