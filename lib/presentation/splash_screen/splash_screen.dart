import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue600,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup230,
                          height: getVerticalSize(137.00),
                          width: getHorizontalSize(195.00)),
                      Container(
                          width: getHorizontalSize(132.00),
                          margin: getMargin(left: 30, right: 32, bottom: 5),
                          decoration: AppDecoration.outlineBlack9003f,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_ith".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSairaStencilOneRegular55
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(5.00),
                                            height: getVerticalSize(1.00)))
                              ]))
                    ]))));
  }
}
