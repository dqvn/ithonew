import '../top_doctor_screen/widgets/top_doctor_item_widget.dart';
import 'controller/top_doctor_controller.dart';
import 'models/top_doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends GetWidget<TopDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgReply,
            margin: getMargin(
              left: 24,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle3(
            text: "lbl_top_doctor".tr,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 24,
            top: 24,
            right: 24,
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
              itemCount:
                  controller.topDoctorModelObj.value.topDoctorItemList.length,
              itemBuilder: (context, index) {
                TopDoctorItemModel model =
                    controller.topDoctorModelObj.value.topDoctorItemList[index];
                return TopDoctorItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
