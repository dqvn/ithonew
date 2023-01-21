import 'controller/schedule_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/home_page/home_page.dart';
import 'package:itho_new/presentation/schedule_page/schedule_page.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';

class ScheduleTabContainerScreen
    extends GetWidget<ScheduleTabContainerController> {
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
              "lbl_schedule".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewaySemiBold24.copyWith(
                height: getVerticalSize(
                  1.14,
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
                left: 201,
                top: 8,
                right: 20,
                bottom: 4,
              ),
              child: Stack(
                alignment: Alignment.center,
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
                    svgPath: ImageConstant.imgLock,
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
            left: 20,
            top: 18,
            right: 20,
            bottom: 18,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  335.00,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray10001,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                ),
                child: TabBar(
                  controller: controller.group125Controller,
                  tabs: [
                    Tab(
                      text: "lbl_upcoming".tr,
                    ),
                    Tab(
                      text: "lbl_completed".tr,
                    ),
                    Tab(
                      text: "lbl_canceled".tr,
                    ),
                  ],
                  labelColor: ColorConstant.whiteA700,
                  unselectedLabelColor: ColorConstant.gray90001,
                  indicator: BoxDecoration(
                    color: ColorConstant.blue60001,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 32,
                  bottom: 5,
                ),
                height: getVerticalSize(
                  374.00,
                ),
                child: TabBarView(
                  controller: controller.group125Controller,
                  children: [
                    SchedulePage(),
                    SchedulePage(),
                    SchedulePage(),
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
