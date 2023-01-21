import '../controller/pharmacy_controller.dart';
import '../models/listef58faa9a71e47e_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class Listef58faa9a71e47eItemWidget extends StatelessWidget {
  Listef58faa9a71e47eItemWidget(this.listef58faa9a71e47eItemModelObj);

  Listef58faa9a71e47eItemModel listef58faa9a71e47eItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 21,
          ),
          padding: getPadding(
            left: 7,
            top: 10,
            right: 7,
            bottom: 10,
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
                imagePath: ImageConstant.imgEf58faa9a71e47e,
                height: getVerticalSize(
                  58.00,
                ),
                width: getHorizontalSize(
                  56.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    29.00,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 11,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 14,
                ),
                child: Text(
                  "lbl_panadol".tr,
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
                  left: 1,
                  top: 8,
                ),
                child: Text(
                  "lbl_20pcs".tr,
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
                  left: 1,
                  top: 2,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_15_99".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewaySemiBold14Black900.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
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
                        left: 42,
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
