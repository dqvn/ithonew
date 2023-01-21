import '../controller/find_doctors_controller.dart';
import '../models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class FindDoctorsItemWidget extends StatelessWidget {
  FindDoctorsItemWidget(this.findDoctorsItemModelObj);

  FindDoctorsItemModel findDoctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.blue5001,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: getVerticalSize(
              56.00,
            ),
            width: getHorizontalSize(
              64.00,
            ),
            padding: getPadding(
              left: 16,
              top: 12,
              right: 16,
              bottom: 12,
            ),
            decoration: AppDecoration.outlineBlack90019.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgUserBlue600,
                  height: getSize(
                    32.00,
                  ),
                  width: getSize(
                    32.00,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 9,
          ),
          child: Text(
            "lbl_general".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRegular13.copyWith(
              height: getVerticalSize(
                1.19,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
