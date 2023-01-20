import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                title: AppbarSubtitle2(text: "lbl_ng_nh_p".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 24, top: 40, right: 24, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_nh_p_email_c_a_b_n".tr,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "msg_nh_p_m_t_kh_u_c_a".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT17,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCar)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 16, right: 24, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgTicket)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("lbl_qu_n_m_t_kh_u".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayMedium14
                                          .copyWith(
                                              height: getVerticalSize(1.19))))),
                          CustomButton(
                              height: 56,
                              width: 327,
                              text: "lbl_ng_nh_p".tr,
                              margin: getMargin(top: 32)),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("msg_ch_a_c_t_i_kho_n".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayRegular15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.50),
                                                    height: getVerticalSize(
                                                        1.28)))),
                                    Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("lbl_ng_k_n_o".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayMedium15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.28))))
                                  ])),
                          Container(
                              height: getVerticalSize(31.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(top: 25),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(bottom: 14),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200))),
                                CustomButton(
                                    height: 31,
                                    width: 53,
                                    text: "lbl_ho_c".tr,
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll3,
                                    fontStyle: ButtonFontStyle.RalewayRegular16,
                                    alignment: Alignment.center)
                              ])),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.buttonwithGoogleController,
                              hintText: "msg_ng_nh_p_b_ng_google".tr,
                              margin: getMargin(top: 24),
                              variant: TextFormFieldVariant.OutlineGray200_1,
                              fontStyle:
                                  TextFormFieldFontStyle.RalewaySemiBold16,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 18, right: 30, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00))),
                          Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 18, top: 17, right: 18, bottom: 17),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCamera,
                                    height: getVerticalSize(20.00),
                                    width: getHorizontalSize(16.00),
                                    onTap: () {
                                      onTapImgCamera();
                                    }),
                                Padding(
                                    padding:
                                        getPadding(left: 41, top: 1, right: 59),
                                    child: Text("msg_ng_nh_p_b_ng_apple".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewaySemiBold16
                                            .copyWith(
                                                height: getVerticalSize(1.28))))
                              ])),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller:
                                  controller.buttonwithFacebookController,
                              hintText: "msg_ng_nh_p_b_ng_facebook".tr,
                              margin: getMargin(top: 16, bottom: 5),
                              variant: TextFormFieldVariant.OutlineGray200_1,
                              fontStyle:
                                  TextFormFieldFontStyle.RalewaySemiBold16,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  padding: getPadding(
                                      left: 7, top: 4, right: 6, bottom: 4),
                                  margin: getMargin(
                                      left: 18, top: 18, right: 24, bottom: 18),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blue60002,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(10.00))),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFacebook)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)))
                        ])))));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
