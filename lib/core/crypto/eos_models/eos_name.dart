import 'dart:typed_data';

import 'package:hypha_wallet/core/crypto/eos_models/uint_64_parser.dart';

class EosName {
  int value;

  EosName(this.value);

  factory EosName.from(String s) => EosName(EosName.stringToEosName(s));

  @override
  String toString() {
    return EosName.getEosNameAsString(value);
  }

  static String getEosNameAsString(int nameAsInt) {
    final a = Uint64Parser(nameAsInt).toBytesLE();
    var result = '';
    for (var bit = 63; bit >= 0;) {
      var c = 0;
      for (var i = 0; i < 5; ++i) {
        if (bit >= 0) {
          c = (c << 1) | ((a[(bit / 8).floor()] >> (bit % 8)) & 1);
          --bit;
        }
      }
      if (c >= 6) {
        result += String.fromCharCode(c + 'a'.codeUnitAt(0) - 6);
      } else if (c >= 1) {
        result += String.fromCharCode(c + '1'.codeUnitAt(0) - 1);
      } else {
        result += '.';
      }
    }
    while (result.endsWith('.')) {
      result = result.substring(0, result.length - 1);
    }
    return result;
  }

  static int stringToEosName(String s) {
    int charToSymbol(int c) {
      if (c >= 'a'.codeUnitAt(0) && c <= 'z'.codeUnitAt(0)) {
        return c - 'a'.codeUnitAt(0) + 6;
      }
      if (c >= '1'.codeUnitAt(0) && c <= '5'.codeUnitAt(0)) {
        return c - '1'.codeUnitAt(0) + 1;
      }
      return 0;
    }

    final a = Uint8List(8);
    int bit = 63;
    for (int i = 0; i < s.length; ++i) {
      int c = charToSymbol(s.codeUnitAt(i));
      if (bit < 5) {
        c = c << 1;
      }
      for (int j = 4; j >= 0; --j) {
        if (bit >= 0) {
          a[bit ~/ 8] |= ((c >> j) & 1) << (bit % 8);
          --bit;
        }
      }
    }
    return Uint64Parser.fromBytesLE(a).value;
  }
}
