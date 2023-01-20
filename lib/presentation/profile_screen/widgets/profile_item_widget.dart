import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 63,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgLocation,
              height: getSize(
                32.00,
              ),
              width: getSize(
                32.00,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                "lbl_heart_rate".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewaySemiBold10.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Text(
                "lbl_215bpm".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewaySemiBold16WhiteA700.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
