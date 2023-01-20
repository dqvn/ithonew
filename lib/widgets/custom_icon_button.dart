import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillBlue50:
        return ColorConstant.blue50;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillRed50:
        return ColorConstant.red50;
      default:
        return ColorConstant.blue5001;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case IconButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder21,
  RoundedBorder8,
  CircleBorder18,
  CircleBorder12,
}

enum IconButtonPadding {
  PaddingAll9,
  PaddingAll13,
  PaddingAll4,
}

enum IconButtonVariant {
  FillBlue5001,
  FillBlue50,
  FillWhiteA700,
  FillRed50,
}
