import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RalewaySemiBold16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.RalewayMedium16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RalewayRegular12:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RalewayRegular14:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RalewaySemiBold14:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray200_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray200,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlue600:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blue600,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBluegray50:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray50,
            width: 1,
          ),
        );
      case TextFormFieldVariant.UnderLineBluegray50:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.blueGray50,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray200,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray200_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBluegray50:
        return ColorConstant.whiteA700;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray200:
        return false;
      case TextFormFieldVariant.OutlineGray200_1:
        return true;
      case TextFormFieldVariant.OutlineBlue600:
        return false;
      case TextFormFieldVariant.OutlineBluegray50:
        return true;
      case TextFormFieldVariant.UnderLineBluegray50:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          top: 17,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingT16_1:
        return getPadding(
          top: 16,
          right: 12,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingT11:
        return getPadding(
          top: 11,
          right: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          left: 14,
          top: 14,
          bottom: 14,
        );
      default:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingT16,
  PaddingT17,
  PaddingT16_1,
  PaddingT11,
  PaddingT14,
}

enum TextFormFieldVariant {
  None,
  OutlineGray200,
  OutlineGray200_1,
  OutlineBlue600,
  OutlineBluegray50,
  UnderLineBluegray50,
}

enum TextFormFieldFontStyle {
  RalewayRegular16,
  RalewaySemiBold16,
  RalewayMedium16,
  RalewayRegular12,
  RalewayRegular14,
  RalewaySemiBold14,
}
