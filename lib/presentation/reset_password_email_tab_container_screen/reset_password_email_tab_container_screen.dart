import 'controller/reset_password_email_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:itho_new/presentation/reset_password_phone_page/reset_password_phone_page.dart';

class ResetPasswordEmailTabContainerScreen
    extends GetWidget<ResetPasswordEmailTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgReply,
              height: getSize(
                40.00,
              ),
              width: getSize(
                40.00,
              ),
              alignment: Alignment.centerLeft,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  top: 44,
                ),
                child: Text(
                  "msg_forgot_your_password".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayBold24.copyWith(
                    height: getVerticalSize(
                      1.15,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  319.00,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  "msg_enter_your_email2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayMedium16Bluegray300.copyWith(
                    height: getVerticalSize(
                      1.28,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                top: 22,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray100,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12.00,
                  ),
                ),
              ),
              child: TabBar(
                controller: controller.tabController,
                tabs: [
                  Tab(
                    text: "lbl_email".tr,
                  ),
                  Tab(
                    text: "lbl_phone".tr,
                  ),
                ],
                labelColor: ColorConstant.blue600,
                unselectedLabelColor: ColorConstant.blueGray400,
                indicator: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black9000c,
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: getMargin(
                top: 24,
                bottom: 5,
              ),
              height: getVerticalSize(
                144.00,
              ),
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  ResetPasswordEmailPage(),
                  ResetPasswordPhonePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
