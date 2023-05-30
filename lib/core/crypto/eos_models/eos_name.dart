import 'dart:typed_data';

class Uint64Parser {
  final int value;

  Uint64Parser(this.value);

  factory Uint64Parser.fromBytesBE(Uint8List bytes) {
    final buffer = ByteData.view(bytes.buffer);
    // final high = buffer.getUint32(0);
    // final low = buffer.getUint32(4);

    //return Uint64((high << 32) | low);
    return Uint64Parser(buffer.getUint64(0));
  }
  factory Uint64Parser.fromBytesLE(Uint8List bytes) {
    int value = 0;
    for (int i = 7; i >= 0; i--) {
      value = (value << 8) | bytes[i];
    }
    return Uint64Parser(value);
  }

  Uint8List toBytesLE() {
    final bytes = Uint8List(8);
    for (int i = 0; i < 8; i++) {
      bytes[i] = (value >> (i * 8)) & 0xFF;
    }
    return bytes;
  }
}

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
