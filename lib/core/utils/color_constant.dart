import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#7aea78');

  static Color gray90075 = fromHex('#75101522');

  static Color blueGray50 = fromHex('#e8f3f1');

  static Color blue60002 = fromHex('#3577e5');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color black9003f = fromHex('#3f000000');

  static Color gray60014 = fromHex('#147c7c7c');

  static Color gray50 = fromHex('#f4f7ff');

  static Color red50 = fromHex('#ffeaea');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#3b4353');

  static Color blue5002 = fromHex('#edf4fc');

  static Color blue60001 = fromHex('#219ade');

  static Color blue5001 = fromHex('#edf5fc');

  static Color gray600 = fromHex('#707684');

  static Color gray700 = fromHex('#555555');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d3d6da');

  static Color gray500 = fromHex('#adadad');

  static Color gray60001 = fromHex('#717784');

  static Color blue700 = fromHex('#216dde');

  static Color blueGray400 = fromHex('#848d98');

  static Color blueGray300 = fromHex('#a0a7b0');

  static Color amber500 = fromHex('#fbbc05');

  static Color redA200 = fromHex('#ff5c5c');

  static Color blue600 = fromHex('#227dde');

  static Color gray900 = fromHex('#101522');

  static Color gray90001 = fromHex('#101623');

  static Color gray200 = fromHex('#e5e7eb');

  static Color black9000c = fromHex('#0c000000');

  static Color blueGray80001 = fromHex('#3b4453');

  static Color blue6006c = fromHex('#6c227dde');

  static Color blue50 = fromHex('#ecf4fb');

  static Color gray100 = fromHex('#f2f4f6');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color gray10002 = fromHex('#f3f4f7');

  static Color cyan100 = fromHex('#c0f3ee');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f2f2f2');

  static Color whiteA70001 = fromHex('#fffffe');

  static Color blue100 = fromHex('#bdd8f5');

  static Color indigo900 = fromHex('#1a1f71');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#898a8d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#646464');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
