import '../controller/my_cart_controller.dart';
import '../models/my_cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

// ignore: must_be_immutable
class MyCartItemWidget extends StatelessWidget {
  MyCartItemWidget(this.myCartItemModelObj, {this.onTapColumnobhcombi});

  MyCartItemModel myCartItemModelObj;

  var controller = Get.find<MyCartController>();

  VoidCallback? onTapColumnobhcombi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 14,
      ),
      decoration: AppDecoration.outlineBluegray501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHealthvitllys,
            height: getSize(
              50.00,
            ),
            width: getSize(
              50.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                25.00,
              ),
            ),
            margin: getMargin(
              left: 27,
              top: 20,
              bottom: 21,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapColumnobhcombi!();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_obh_combi".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular18.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "lbl_75ml".tr,
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
                    CustomImageView(
                      svgPath: ImageConstant.imgTrashGray500,
                      height: getSize(
                        18.00,
                      ),
                      width: getSize(
                        18.00,
                      ),
                      margin: getMargin(
                        left: 69,
                        top: 1,
                        bottom: 21,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCarGray500,
                        height: getSize(
                          18.00,
                        ),
                        width: getSize(
                          18.00,
                        ),
                        margin: getMargin(
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 2,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular16Gray90001.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
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
                          left: 13,
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 68,
                        ),
                        child: Text(
                          "lbl_9_99".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular18.copyWith(
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
