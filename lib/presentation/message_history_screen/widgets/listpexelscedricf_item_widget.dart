import '../controller/message_history_controller.dart';
import '../models/listpexelscedricf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class ListpexelscedricfItemWidget extends StatelessWidget {
  ListpexelscedricfItemWidget(this.listpexelscedricfItemModelObj);

  ListpexelscedricfItemModel listpexelscedricfItemModelObj;

  var controller = Get.find<MessageHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPexelscedricf,
          height: getVerticalSize(
            50.00,
          ),
          width: getHorizontalSize(
            47.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              25.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_dr_marcus_horizon".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold16Gray90001.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "msg_i_don_t_have_any".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12.copyWith(
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
            top: 9,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_10_24".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular12Gray70001.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Container(
                width: getSize(
                  13.00,
                ),
                margin: getMargin(
                  top: 5,
                ),
                padding: getPadding(
                  left: 4,
                  top: 1,
                  right: 4,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillBlue60001.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder6,
                ),
                child: Text(
                  "lbl_1".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold9.copyWith(
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
    );
  }
}
