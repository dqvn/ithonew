import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/find_doctors_item_widget.dart';
import 'controller/find_doctors_controller.dart';
import 'models/doctors_item_model.dart';
import 'models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgReply,
            margin: getMargin(
              left: 24,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle2(
            text: "lbl_find_doctors".tr,
          ),
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 23,
            top: 24,
            right: 23,
            bottom: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                width: 327,
                focusNode: FocusNode(),
                controller: controller.searchController,
                hintText: "lbl_find_a_doctor".tr,
                margin: getMargin(
                  left: 1,
                ),
                variant: TextFormFieldVariant.OutlineGray200_1,
                padding: TextFormFieldPadding.PaddingT16,
                fontStyle: TextFormFieldFontStyle.RalewayRegular12Gray500,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    left: 17,
                    top: 14,
                    right: 12,
                    bottom: 14,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgQrcode,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    46.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 27,
                ),
                child: Text(
                  "lbl_category".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold18.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.30,
                    ),
                    height: getVerticalSize(
                      1.12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 10,
                  right: 2,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        82.00,
                      ),
                      crossAxisCount: 4,
                      mainAxisSpacing: getHorizontalSize(
                        22.00,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        22.00,
                      ),
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .findDoctorsModelObj.value.findDoctorsItemList.length,
                    itemBuilder: (context, index) {
                      FindDoctorsItemModel model = controller
                          .findDoctorsModelObj.value.findDoctorsItemList[index];
                      return FindDoctorsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 24,
                ),
                child: Text(
                  "msg_recommended_doctors".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold18.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.30,
                    ),
                    height: getVerticalSize(
                      1.15,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 1,
                  top: 12,
                  right: 1,
                ),
                padding: getPadding(
                  top: 16,
                  bottom: 16,
                ),
                decoration: AppDecoration.outlineBluegray501.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse88,
                      height: getSize(
                        88.00,
                      ),
                      width: getSize(
                        88.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          44.00,
                        ),
                      ),
                      margin: getMargin(
                        bottom: 12,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_dr_marcus_horizon".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRalewaySemiBold16Gray900.copyWith(
                              height: getVerticalSize(
                                1.28,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "lbl_chardiologist".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular14.copyWith(
                                height: getVerticalSize(
                                  1.15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              167.00,
                            ),
                            margin: getMargin(
                              top: 4,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.blueGray50,
                              border: Border.all(
                                color: ColorConstant.black900,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                                //strokeAlign: StrokeAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
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
                                  margin: getMargin(
                                    bottom: 2,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_4_7".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayMedium12Amber500
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 44,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_800m_away".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayMedium14Bluegray800
                                        .copyWith(
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
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 43,
                ),
                child: Text(
                  "msg_your_recent_doctors".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold18.copyWith(
                    height: getVerticalSize(
                      1.15,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  101.00,
                ),
                child: Obx(
                  () => ListView.separated(
                    padding: getPadding(
                      left: 1,
                      top: 12,
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          24.00,
                        ),
                      );
                    },
                    itemCount: controller
                        .findDoctorsModelObj.value.doctorsItemList.length,
                    itemBuilder: (context, index) {
                      DoctorsItemModel model = controller
                          .findDoctorsModelObj.value.doctorsItemList[index];
                      return DoctorsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
