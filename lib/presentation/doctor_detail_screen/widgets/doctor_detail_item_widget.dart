import '../controller/doctor_detail_controller.dart';
import '../models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class DoctorDetailItemWidget extends StatelessWidget {
  DoctorDetailItemWidget(this.doctorDetailItemModelObj);

  DoctorDetailItemModel doctorDetailItemModelObj;

  var controller = Get.find<DoctorDetailController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            103.00,
          ),
          padding: getPadding(
            left: 25,
            top: 9,
            right: 25,
            bottom: 9,
          ),
          decoration: AppDecoration.txtOutlineGray10001.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_09_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRegular12.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            103.00,
          ),
          padding: getPadding(
            left: 25,
            top: 10,
            right: 25,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineBluegray10001.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_10_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRegular12Gray90001.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            103.00,
          ),
          padding: getPadding(
            left: 27,
            top: 10,
            right: 27,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineGray10001.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_11_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRegular12.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
