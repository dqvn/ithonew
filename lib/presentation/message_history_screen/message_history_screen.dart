import '../message_history_screen/widgets/listpexelscedricf_item_widget.dart';
import 'controller/message_history_controller.dart';
import 'models/listpexelscedricf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/home_page/home_page.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';

class MessageHistoryScreen extends GetWidget<MessageHistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Padding(
            padding: getPadding(
              left: 21,
            ),
            child: Text(
              "lbl_message".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold24.copyWith(
                height: getVerticalSize(
                  1.10,
                ),
              ),
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                33.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              margin: getMargin(
                left: 204,
                top: 8,
                right: 20,
                bottom: 7,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  AppbarImage(
                    height: getVerticalSize(
                      16.00,
                    ),
                    width: getHorizontalSize(
                      4.00,
                    ),
                    svgPath: ImageConstant.imgComponent1WhiteA700,
                    margin: getMargin(
                      left: 20,
                      top: 17,
                    ),
                  ),
                  AppbarImage(
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    svgPath: ImageConstant.imgQrcodeBlack900,
                    margin: getMargin(
                      bottom: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 19,
            top: 15,
            right: 19,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(
                  left: 1,
                  right: 1,
                ),
                decoration: AppDecoration.fillGray10002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: 46,
                      width: 104,
                      text: "lbl_all".tr,
                      fontStyle: ButtonFontStyle.RalewaySemiBold14,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 43,
                        top: 15,
                        bottom: 13,
                      ),
                      child: Text(
                        "lbl_group".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular14Gray90001.copyWith(
                          height: getVerticalSize(
                            1.95,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 14,
                        right: 44,
                        bottom: 14,
                      ),
                      child: Text(
                        "lbl_private".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular14Gray90001.copyWith(
                          height: getVerticalSize(
                            1.95,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 32,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16.00,
                        ),
                      );
                    },
                    itemCount: controller.messageHistoryModelObj.value
                        .listpexelscedricfItemList.length,
                    itemBuilder: (context, index) {
                      ListpexelscedricfItemModel model = controller
                          .messageHistoryModelObj
                          .value
                          .listpexelscedricfItemList[index];
                      return ListpexelscedricfItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: getSize(
                  55.00,
                ),
                width: getSize(
                  55.00,
                ),
                margin: getMargin(
                  right: 1,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.blue600,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      27.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black90019,
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: Offset(
                        0,
                        8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Arrowdown:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Usergray500:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
