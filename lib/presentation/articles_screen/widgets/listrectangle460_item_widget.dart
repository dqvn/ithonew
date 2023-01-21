import '../controller/articles_controller.dart';
import '../models/listrectangle460_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle460ItemWidget extends StatelessWidget {
  Listrectangle460ItemWidget(this.listrectangle460ItemModelObj);

  Listrectangle460ItemModel listrectangle460ItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 15,
          ),
          padding: getPadding(
            left: 8,
            top: 10,
            right: 8,
            bottom: 10,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle460,
                height: getVerticalSize(
                  87.00,
                ),
                width: getHorizontalSize(
                  138.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8.00,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  49.00,
                ),
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 5,
                  top: 1,
                  right: 5,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                ),
                child: Text(
                  "lbl_covid_19".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayMedium9.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  102.00,
                ),
                margin: getMargin(
                  top: 5,
                ),
                child: Text(
                  "msg_comparing_the_astrazeneca".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold12.copyWith(
                    height: getVerticalSize(
                      1.14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_jun_12_2021".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayMedium9Gray500.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        2.00,
                      ),
                      width: getSize(
                        2.00,
                      ),
                      margin: getMargin(
                        left: 9,
                        top: 4,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "lbl_6_min_read".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayMedium9.copyWith(
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
        ),
      ),
    );
  }
}
