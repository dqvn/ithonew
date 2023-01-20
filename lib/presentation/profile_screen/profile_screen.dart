import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/home_page/home_page.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';
import 'package:itho_new/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 79),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.2, 0.46),
                        end: Alignment(0.72, 0.86),
                        colors: [
                      ColorConstant.blue60001,
                      ColorConstant.blue700
                    ])),
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgComponent1WhiteA700,
                                  height: getVerticalSize(16.00),
                                  width: getHorizontalSize(4.00),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(top: 25, right: 20)),
                              Container(
                                  height: getVerticalSize(82.00),
                                  width: getHorizontalSize(81.00),
                                  margin: getMargin(top: 3),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse27,
                                            height: getSize(80.00),
                                            width: getSize(80.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(40.00)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            variant:
                                                IconButtonVariant.FillWhiteA700,
                                            shape:
                                                IconButtonShape.CircleBorder12,
                                            padding:
                                                IconButtonPadding.PaddingAll4,
                                            alignment: Alignment.bottomRight,
                                            onTap: () {
                                              onTapBtnCamera();
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCameraBlue600))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("lbl_amelia_renata".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewaySemiBold18WhiteA700
                                          .copyWith(
                                              height: getVerticalSize(1.00)))),
                              Container(
                                  height: getVerticalSize(102.00),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(
                                          left: 44, top: 30, right: 44),
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(44.00),
                                            width: getHorizontalSize(1.00),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.cyan100));
                                      },
                                      itemCount: controller.profileModelObj
                                          .value.profileItemList.length,
                                      itemBuilder: (context, index) {
                                        ProfileItemModel model = controller
                                            .profileModelObj
                                            .value
                                            .profileItemList[index];
                                        return ProfileItemWidget(model);
                                      }))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 41),
                                  padding: getPadding(
                                      left: 20, top: 31, right: 20, bottom: 31),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 43,
                                                  width: 43,
                                                  onTap: () {
                                                    onTapBtnTwitter();
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTwitter)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 13,
                                                      bottom: 10),
                                                  child: Text("lbl_my_saved".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewaySemiBold16Gray90001
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(
                                                      top: 10, bottom: 9))
                                            ]),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 13),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray50)),
                                        Padding(
                                            padding: getPadding(top: 13),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMenuBlack900)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 13,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_appointmnet".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewaySemiBold16Gray90001
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, bottom: 9))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 13),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray50)),
                                        Padding(
                                            padding: getPadding(top: 13),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconlylightoutlinewallet)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 13,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_payment_method"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewaySemiBold16Gray90001
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 9, bottom: 10))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 13),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray50)),
                                        Padding(
                                            padding: getPadding(top: 13),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgComputer)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 11,
                                                          bottom: 12),
                                                      child: Text("lbl_faqs".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewaySemiBold16Gray90001
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, bottom: 9))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 13),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray50)),
                                        Padding(
                                            padding:
                                                getPadding(top: 13, bottom: 74),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      variant: IconButtonVariant
                                                          .FillRed50,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMinimize)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 13,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_logout2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewaySemiBold16RedA200
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, bottom: 9))
                                                ]))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Arrowdown:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Usergray500:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapBtnTwitter() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
