import '../controller/schedule_controller.dart';
import '../models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(this.scheduleItemModelObj);

  ScheduleItemModel scheduleItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 14,
        right: 15,
        bottom: 14,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              right: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_dr_marcus_horizon".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewaySemiBold18Gray90001.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                        ),
                        child: Text(
                          "lbl_chardiologist".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayMedium12.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPexelscedricf46x46,
                  height: getSize(
                    46.00,
                  ),
                  width: getSize(
                    46.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      23.00,
                    ),
                  ),
                  margin: getMargin(
                    top: 2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgCalendarGray700,
                  height: getSize(
                    15.00,
                  ),
                  width: getSize(
                    15.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                  ),
                  child: Text(
                    "lbl_26_06_2022".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayMedium12Gray70001.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgClock,
                  height: getSize(
                    15.00,
                  ),
                  width: getSize(
                    15.00,
                  ),
                  margin: getMargin(
                    left: 11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 1,
                  ),
                  child: Text(
                    "lbl_10_30_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayMedium12Gray70001.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getSize(
                    6.00,
                  ),
                  width: getSize(
                    6.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 5,
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.green300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        3.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_confirmed".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayMedium12Gray70001.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 13,
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  height: 46,
                  width: 145,
                  text: "lbl_cancel".tr,
                  variant: ButtonVariant.FillGray10001,
                  fontStyle: ButtonFontStyle.RalewaySemiBold14Gray70001,
                ),
                CustomButton(
                  height: 46,
                  width: 145,
                  text: "lbl_reschedule".tr,
                  variant: ButtonVariant.FillBlue6006c,
                  fontStyle: ButtonFontStyle.RalewaySemiBold14Blue60001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
