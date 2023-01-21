import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
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
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgPngegg1,
                          height: getVerticalSize(493.00),
                          width: getHorizontalSize(352.00),
                          alignment: Alignment.topCenter,
                          margin: getMargin(top: 45)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: size.width,
                              padding: getPadding(
                                  left: 42, top: 31, right: 42, bottom: 31),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(246.00),
                                        margin: getMargin(left: 2),
                                        child: Text("msg_k_t_n_i_nhanh_t_i".tr,
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
                                            margin: getMargin(top: 13),
                                            child: SmoothIndicator(
                                                offset: 2,
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
                                    CustomButton(
                                        height: 56,
                                        width: 291,
                                        text: "lbl_v_o_vi_c_ngay".tr,
                                        margin: getMargin(top: 54, bottom: 4),
                                        fontStyle:
                                            ButtonFontStyle.InterSemiBold16,
                                        onTap: navigatetomainpage)
                                  ])))
                    ])))));
  }

  navigatetomainpage() {
    Get.toNamed(AppRoutes.onboardingFourScreen); //findDoctorsScreen
  }
}
