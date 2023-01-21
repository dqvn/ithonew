import '../articles_screen/widgets/listgroup_item_widget.dart';
import '../articles_screen/widgets/listrectangle460_item_widget.dart';
import '../articles_screen/widgets/listunsplash86rvjm9zowy_item_widget.dart';
import 'controller/articles_controller.dart';
import 'models/listgroup_item_model.dart';
import 'models/listrectangle460_item_model.dart';
import 'models/listunsplash86rvjm9zowy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

class ArticlesScreen extends GetWidget<ArticlesController> {
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
          title: AppbarSubtitle3(
            text: "lbl_articles".tr,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "msg_search_articles".tr,
                    margin: getMargin(
                      left: 4,
                    ),
                    variant: TextFormFieldVariant.OutlineGray200_1,
                    padding: TextFormFieldPadding.PaddingT11,
                    fontStyle: TextFormFieldFontStyle.RalewayRegular12Gray500,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 11,
                        right: 8,
                        bottom: 11,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgQrcode,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        40.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 25,
                    ),
                    child: Text(
                      "msg_popular_articles".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewaySemiBold16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        63.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 5,
                            top: 13,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                15.00,
                              ),
                            );
                          },
                          itemCount: controller
                              .articlesModelObj.value.listgroupItemList.length,
                          itemBuilder: (context, index) {
                            ListgroupItemModel model = controller
                                .articlesModelObj
                                .value
                                .listgroupItemList[index];
                            return ListgroupItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 4,
                        top: 25,
                        right: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_trending_articles".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewaySemiBold16.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_see_all".tr,
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
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        232.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 4,
                            top: 13,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                15.00,
                              ),
                            );
                          },
                          itemCount: controller.articlesModelObj.value
                              .listrectangle460ItemList.length,
                          itemBuilder: (context, index) {
                            Listrectangle460ItemModel model = controller
                                .articlesModelObj
                                .value
                                .listrectangle460ItemList[index];
                            return Listrectangle460ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_related_articles".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewaySemiBold16Black900.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
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
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                      right: 20,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              10.00,
                            ),
                          );
                        },
                        itemCount: controller.articlesModelObj.value
                            .listunsplash86rvjm9zowyItemList.length,
                        itemBuilder: (context, index) {
                          Listunsplash86rvjm9zowyItemModel model = controller
                              .articlesModelObj
                              .value
                              .listunsplash86rvjm9zowyItemList[index];
                          return Listunsplash86rvjm9zowyItemWidget(
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
        ),
      ),
    );
  }
}
