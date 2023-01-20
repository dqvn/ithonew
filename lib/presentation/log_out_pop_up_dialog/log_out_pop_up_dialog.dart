import 'controller/log_out_pop_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogOutPopUpDialog extends StatelessWidget {
  LogOutPopUpDialog(this.controller);

  LogOutPopUpController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 27,
        top: 49,
        right: 27,
        bottom: 49,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 2,
            ),
            color: ColorConstant.red50,
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
                all: 22,
              ),
              decoration: AppDecoration.fillRed50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getSize(
                      58.00,
                    ),
                    width: getSize(
                      58.00,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              246.00,
            ),
            margin: getMargin(
              top: 52,
            ),
            child: Text(
              "msg_are_you_sure_to".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterBold20.copyWith(
                height: getVerticalSize(
                  1.03,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 56,
            width: 273,
            text: "lbl_log_out".tr,
            margin: getMargin(
              top: 27,
            ),
            variant: ButtonVariant.FillRedA200,
          ),
          Padding(
            padding: getPadding(
              top: 18,
            ),
            child: Text(
              "lbl_cancel".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16Blue600.copyWith(
                height: getVerticalSize(
                  1.24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
