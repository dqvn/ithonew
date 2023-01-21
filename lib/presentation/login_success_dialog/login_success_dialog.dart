import 'controller/login_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LoginSuccessDialog extends StatelessWidget {
  LoginSuccessDialog(this.controller);

  LoginSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: getPadding(left: 24, top: 36, right: 24, bottom: 36),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(top: 26),
                  color: ColorConstant.gray50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder51),
                  child: Container(
                      height: getSize(102.00),
                      width: getSize(102.00),
                      padding:
                          getPadding(left: 30, top: 35, right: 30, bottom: 35),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder51),
                      child: Stack(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmarkBlue600,
                            height: getVerticalSize(29.00),
                            width: getHorizontalSize(39.00),
                            radius:
                                BorderRadius.circular(getHorizontalSize(3.00)),
                            alignment: Alignment.topCenter)
                      ]))),
              Padding(
                  padding: getPadding(top: 42),
                  child: Text("msg_yeay_welcome_back".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayBold20
                          .copyWith(height: getVerticalSize(1.06)))),
              Container(
                  width: getHorizontalSize(267.00),
                  margin: getMargin(top: 8),
                  child: Text("msg_once_again_you_login".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRalewayRegular16.copyWith(
                          letterSpacing: getHorizontalSize(0.50),
                          height: getVerticalSize(1.28)))),
              CustomButton(
                  height: 56,
                  width: 279,
                  text: "lbl_go_to_home".tr,
                  margin: getMargin(top: 22),
                  onTap: onTapGotohome)
            ]));
  }

  onTapGotohome() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }
}
