import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'dart:async';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';
import 'package:webview_flutter/webview_flutter.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  Completer<WebViewController> webViewController =
      Completer<WebViewController>();

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(58.00),
                title: Container(
                    width: getHorizontalSize(166.00),
                    margin: getMargin(left: 24),
                    child: Text("msg_find_your_desire".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewaySemiBold22
                            .copyWith(height: getVerticalSize(1.24)))),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgLock,
                      margin:
                          getMargin(left: 24, top: 5, right: 24, bottom: 28))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 22, right: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.searchController,
                                  hintText: "msg_search_doctor_drugs".tr,
                                  variant:
                                      TextFormFieldVariant.OutlineGray200_1,
                                  padding: TextFormFieldPadding.PaddingT11,
                                  fontStyle: TextFormFieldFontStyle
                                      .RalewayRegular12Gray500,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 11,
                                          right: 8,
                                          bottom: 11),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgQrcode)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40.00))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapDoctor();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          clipBehavior: Clip
                                                              .antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .blue50,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      56.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      64.00),
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 12,
                                                                      right: 16,
                                                                      bottom:
                                                                          12),
                                                              decoration: AppDecoration
                                                                  .fillBlue50
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Stack(
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgUserBlue600,
                                                                        height: getSize(
                                                                            32.00),
                                                                        width: getSize(
                                                                            32.00),
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "lbl_doctor".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayMedium14Bluegray300
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          1.19))))
                                                    ]))),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color: ColorConstant.blue50,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          56.00),
                                                      width: getHorizontalSize(
                                                          64.00),
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 12,
                                                          right: 16,
                                                          bottom: 12),
                                                      decoration: AppDecoration
                                                          .fillBlue50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLink,
                                                            height:
                                                                getSize(32.00),
                                                            width:
                                                                getSize(32.00),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_pharmacy".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium14Bluegray300
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19))))
                                            ]),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color: ColorConstant.blue50,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          56.00),
                                                      width: getHorizontalSize(
                                                          64.00),
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 12,
                                                          right: 16,
                                                          bottom: 12),
                                                      decoration: AppDecoration
                                                          .fillBlue50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgUpload,
                                                            height:
                                                                getSize(32.00),
                                                            width:
                                                                getSize(32.00),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_hospital".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium14Bluegray300
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19))))
                                            ]),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color:
                                                          ColorConstant.blue50,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  64.00),
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 12,
                                                              right: 16,
                                                              bottom: 12),
                                                          decoration: AppDecoration
                                                              .fillBlue50
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgTicketBlue600,
                                                                height: getSize(
                                                                    32.00),
                                                                width: getSize(
                                                                    32.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_ambulance".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayMedium14Bluegray300
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.19))))
                                                ]))
                                      ])),
                              Container(
                                  height: getVerticalSize(135.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 15),
                                  child: WebView(
                                      initialUrl: 'https://flutter.dev',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                      onWebViewCreated:
                                          (WebViewController controller) {
                                        webViewController.complete(controller);
                                      },
                                      onProgress: (int progress) {
                                        print(
                                            "WebView is loading (progress : $progress%)");
                                      },
                                      onPageStarted: (String url) {
                                        print("Page started loading: $url");
                                      },
                                      onPageFinished: (String url) {
                                        print("Page finished loading: $url");
                                      })),
                              Padding(
                                  padding: getPadding(top: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_top_doctor".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewaySemiBold16
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeall();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayMedium14Blue60001
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(191.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(17.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(17.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapDoctor() {
    Get.toNamed(AppRoutes.findDoctorsScreen);
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.topDoctorScreen);
  }
}
