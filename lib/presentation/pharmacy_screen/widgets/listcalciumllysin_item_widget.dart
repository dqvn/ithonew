import '../controller/pharmacy_controller.dart';
import '../models/listcalciumllysin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class ListcalciumllysinItemWidget extends StatelessWidget {
  ListcalciumllysinItemWidget(this.listcalciumllysinItemModelObj);

  ListcalciumllysinItemModel listcalciumllysinItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 17,
          ),
          padding: getPadding(
            left: 7,
            top: 8,
            right: 7,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBluegray501.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalciumllysin68x66,
                height: getVerticalSize(
                  68.00,
                ),
                width: getHorizontalSize(
                  66.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    34.00,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 10,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "lbl_obh_combi".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold14Gray90001.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "lbl_75ml".tr,
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
                  top: 2,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getVerticalSize(
                        17.00,
                      ),
                      width: getHorizontalSize(
                        74.00,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                71.00,
                              ),
                              margin: getMargin(
                                right: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_9_99".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewaySemiBold14Black900
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "lbl_10_99".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewaySemiBold8.copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                29.00,
                              ),
                              margin: getMargin(
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        18.00,
                      ),
                      width: getSize(
                        18.00,
                      ),
                      margin: getMargin(
                        left: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
