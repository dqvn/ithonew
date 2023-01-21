import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_checkbox.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';
import 'package:itho_new/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';
import 'package:itho_new/presentation/sign_up_success_dialog/controller/sign_up_success_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgReply,
                    margin: getMargin(left: 24)),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_sign_up".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 24, top: 40, right: 24, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.inputController,
                              hintText: "lbl_enter_your_name".tr,
                              padding: TextFormFieldPadding.PaddingT16_1,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.inputOneController,
                              hintText: "msg_enter_your_email".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT16_1,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.inputTwoController,
                              hintText: "msg_enter_your_password".tr,
                              margin: getMargin(top: 16),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCar)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 12,
                                          top: 16,
                                          right: 24,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgTicket
                                                  : ImageConstant.imgTicket))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Obx(() => CustomCheckbox(
                              text: "msg_i_agree_to_the_medidoc".tr,
                              iconSize: 24,
                              value: controller.checkbox.value,
                              padding: getPadding(top: 16),
                              onChange: (value) {
                                controller.checkbox.value = value;
                              })),
                          CustomButton(
                              height: 56,
                              width: 327,
                              text: "lbl_sign_up".tr,
                              margin: getMargin(top: 29),
                              onTap: onTapSignupOne),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 28, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_already_have_an".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayRegular15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.50),
                                                    height:
                                                        getVerticalSize(1.28))),
                                        Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("lbl_log_in".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayMedium15
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.28))))
                                      ])))
                        ])))));
  }

  onTapSignupOne() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: SignUpSuccessDialog(
        Get.put(
          SignUpSuccessController(),
        ),
      ),
    ));
  }
}
