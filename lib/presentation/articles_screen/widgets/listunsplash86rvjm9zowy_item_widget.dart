import '../controller/articles_controller.dart';
import '../models/listunsplash86rvjm9zowy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class Listunsplash86rvjm9zowyItemWidget extends StatelessWidget {
  Listunsplash86rvjm9zowyItemWidget(this.listunsplash86rvjm9zowyItemModelObj);

  Listunsplash86rvjm9zowyItemModel listunsplash86rvjm9zowyItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 5,
      ),
      decoration: AppDecoration.outlineBluegray501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplash86rvjm9zowy,
            height: getSize(
              59.00,
            ),
            width: getSize(
              59.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 6,
              right: 47,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    206.00,
                  ),
                  child: Text(
                    "msg_the_25_healthiest".tr,
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
                    top: 3,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_jun_10_20212".tr,
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
                          left: 7,
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
                          "lbl_5min_read2".tr,
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
        ],
      ),
    );
  }
}
