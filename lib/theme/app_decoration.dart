import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray60014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get txtOutlineGray10002 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray10002,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get gradientBlue600Blue700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.5,
            0,
          ),
          end: Alignment(
            -0.5,
            1,
          ),
          colors: [
            ColorConstant.blue600,
            ColorConstant.blue700,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtFillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );
  static BoxDecoration get outlineBluegray501 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtFillBlue60001 => BoxDecoration(
        color: ColorConstant.blue60001,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration();
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get fillBlue60001 => BoxDecoration(
        color: ColorConstant.blue60001,
      );
  static BoxDecoration get fillRed50 => BoxDecoration(
        color: ColorConstant.red50,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get gradientBlue600Blue7001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.2,
            0.46,
          ),
          end: Alignment(
            0.72,
            0.86,
          ),
          colors: [
            ColorConstant.blue600,
            ColorConstant.blue700,
          ],
        ),
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.blue5001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL64 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        64.00,
      ),
    ),
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );

  static BorderRadius customBorderBL5 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        5.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        5.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        5.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius circleBorder37 = BorderRadius.circular(
    getHorizontalSize(
      37.00,
    ),
  );

  static BorderRadius circleBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29.00,
    ),
  );

  static BorderRadius circleBorder33 = BorderRadius.circular(
    getHorizontalSize(
      33.00,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius circleBorder44 = BorderRadius.circular(
    getHorizontalSize(
      44.00,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40.00,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius customBorderBL8 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );

  static BorderRadius roundedBorder51 = BorderRadius.circular(
    getHorizontalSize(
      51.00,
    ),
  );

  static BorderRadius roundedBorder81 = BorderRadius.circular(
    getHorizontalSize(
      81.00,
    ),
  );

  static BorderRadius txtRoundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2.00,
    ),
  );
}
