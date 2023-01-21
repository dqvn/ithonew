import 'controller/create_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgReply,
                  height: getSize(
                    40.00,
                  ),
                  width: getSize(
                    40.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 41,
                  ),
                  child: Text(
                    "msg_create_new_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayBold24.copyWith(
                      height: getVerticalSize(
                        1.15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 13,
                  ),
                  child: Text(
                    "msg_create_your_new".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRegular16.copyWith(
                      height: getVerticalSize(
                        1.28,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.inputController,
                    hintText: "msg_enter_new_password".tr,
                    margin: getMargin(
                      top: 24,
                    ),
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCar,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
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
                          bottom: 16,
                        ),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword.value
                              ? ImageConstant.imgTicket
                              : ImageConstant.imgTicket,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: !controller.isShowPassword.value,
                  ),
                ),
                Obx(
                  () => CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.inputOneController,
                    hintText: "msg_confirm_password".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCar,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword1.value =
                            !controller.isShowPassword1.value;
                      },
                      child: Container(
                        margin: getMargin(
                          left: 30,
                          top: 16,
                          right: 24,
                          bottom: 16,
                        ),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword1.value
                              ? ImageConstant.imgTicket
                              : ImageConstant.imgTicket,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: !controller.isShowPassword1.value,
                  ),
                ),
                CustomButton(
                  height: 56,
                  width: 327,
                  text: "lbl_create_password".tr,
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
