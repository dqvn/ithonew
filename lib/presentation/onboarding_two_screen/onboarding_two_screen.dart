import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.5, 0),
                        end: Alignment(-0.5, 1),
                        colors: [
                      ColorConstant.blue60001,
                      ColorConstant.blue700
                    ])),
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgPngegg11,
                              height: getVerticalSize(482.00),
                              width: getHorizontalSize(375.00),
                              margin: getMargin(top: 27)),
                          Container(
                              width: size.width,
                              padding: getPadding(
                                  left: 33, top: 31, right: 33, bottom: 31),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(271.00),
                                        margin: getMargin(left: 9),
                                        child: Text("msg_gi_i_quy_t_m_i_v_n".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold22
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.15)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(8.00),
                                            margin: getMargin(top: 12),
                                            child: SmoothIndicator(
                                                offset: 0,
                                                count: 3,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 4,
                                                    activeDotColor:
                                                        ColorConstant.blue600,
                                                    dotColor:
                                                        ColorConstant.blue100,
                                                    dotHeight:
                                                        getVerticalSize(8.00),
                                                    dotWidth: getHorizontalSize(
                                                        8.00))))),
                                    Padding(
                                        padding: getPadding(
                                            top: 54, right: 9, bottom: 4),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20, bottom: 18),
                                                  child: Text("lbl_b_qua".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.16)))),
                                              CustomButton(
                                                  height: 56,
                                                  width: 145,
                                                  text: "lbl_ti_p_t_c".tr,
                                                  fontStyle: ButtonFontStyle
                                                      .InterSemiBold16,
                                                  onTap: navigateto3screen)
                                            ]))
                                  ]))
                        ])))));
  }

  navigateto3screen() {
    Get.toNamed(AppRoutes.onboardingThreeScreen);
  }
}
