import '../controller/top_doctor_controller.dart';
import '../models/top_doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class TopDoctorItemWidget extends StatelessWidget {
  TopDoctorItemWidget(this.topDoctorItemModelObj);

  TopDoctorItemModel topDoctorItemModelObj;

  var controller = Get.find<TopDoctorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 7,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle959111x111,
            height: getSize(
              111.00,
            ),
            width: getSize(
              111.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_marcus_horizon2".tr,
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
                    top: 10,
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
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_4_7".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayMedium12Amber500.copyWith(
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
                    left: 16,
                    top: 9,
                  ),
                  child: Text(
                    "lbl_800m_away".tr,
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
        ],
      ),
    );
  }
}
