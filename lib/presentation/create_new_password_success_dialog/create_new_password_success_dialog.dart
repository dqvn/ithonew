import 'controller/create_new_password_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordSuccessDialog extends StatelessWidget {
  CreateNewPasswordSuccessDialog(this.controller);

  CreateNewPasswordSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 40,
        right: 24,
        bottom: 40,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 17,
            ),
            color: ColorConstant.gray50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                103.00,
              ),
              width: getSize(
                103.00,
              ),
              padding: getPadding(
                left: 30,
                top: 36,
                right: 30,
                bottom: 36,
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
                      40.00,
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
              style: AppStyle.txtInterBold20.copyWith(
                height: getVerticalSize(
                  1.03,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              176.00,
            ),
            margin: getMargin(
              top: 10,
            ),
            child: Text(
              "msg_your_account_has".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterRegular16.copyWith(
                height: getVerticalSize(
                  1.24,
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
