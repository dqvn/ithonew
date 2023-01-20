import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 91,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup230Blue600,
                height: getVerticalSize(
                  137.00,
                ),
                width: getHorizontalSize(
                  195.00,
                ),
                margin: getMargin(
                  left: 65,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  132.00,
                ),
                margin: getMargin(
                  left: 94,
                ),
                decoration: AppDecoration.outlineBlack9003f,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_ith".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtSairaStencilOneRegular55Blue600.copyWith(
                        letterSpacing: getHorizontalSize(
                          5.00,
                        ),
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "msg_b_t_tay_v_o_vi_c".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayBold22.copyWith(
                      height: getVerticalSize(
                        1.15,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    285.00,
                  ),
                  margin: getMargin(
                    top: 10,
                  ),
                  child: Text(
                    "msg_ng_nh_p_t_m".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtRalewayMedium16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.50,
                      ),
                      height: getVerticalSize(
                        1.28,
                      ),
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 56,
                width: 327,
                text: "lbl_ng_nh_p".tr,
                margin: getMargin(
                  top: 47,
                ),
              ),
              CustomButton(
                height: 56,
                width: 328,
                text: "lbl_ng_k".tr,
                margin: getMargin(
                  top: 10,
                  bottom: 5,
                ),
                variant: ButtonVariant.OutlineBlue600,
                fontStyle: ButtonFontStyle.RalewaySemiBold16Blue600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
