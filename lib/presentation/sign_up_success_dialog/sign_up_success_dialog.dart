import 'controller/sign_up_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessDialog extends StatelessWidget {
  SignUpSuccessDialog(this.controller);

  SignUpSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 49,
        right: 24,
        bottom: 49,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.gray50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                102.00,
              ),
              width: getSize(
                102.00,
              ),
              padding: getPadding(
                left: 30,
                top: 35,
                right: 30,
                bottom: 35,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmarkBlue600,
                    height: getVerticalSize(
                      29.00,
                    ),
                    width: getHorizontalSize(
                      39.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        3.00,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 40,
            ),
            child: Text(
              "lbl_success".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayBold20.copyWith(
                height: getVerticalSize(
                  1.06,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              183.00,
            ),
            margin: getMargin(
              top: 10,
            ),
            child: Text(
              "msg_your_account_has".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtRalewayRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.50,
                ),
                height: getVerticalSize(
                  1.28,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 56,
            width: 279,
            text: "lbl_go_to_home".tr,
            margin: getMargin(
              top: 22,
            ),
          ),
        ],
      ),
    );
  }
}
