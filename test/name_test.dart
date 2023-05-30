import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

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

class EosNameType {
  int value;
  EosNameType(this.value);
  factory EosNameType.from(String s) => EosNameType(stringToEosName(s));

  String asString() {
    return getEosNameAsString(value);
  }
}

String getEosNameAsString(int nameAsInt) {
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

int stringToEosName(String s) {
  int charToSymbol(int c) {
    if (c >= 'a'.codeUnitAt(0) && c <= 'z'.codeUnitAt(0)) {
      return c - 'a'.codeUnitAt(0) + 6;
    }
    if (c >= '1'.codeUnitAt(0) && c <= '5'.codeUnitAt(0)) {
      return c - '1'.codeUnitAt(0) + 1;
    }
    return 0;
  }

  Uint8List a = Uint8List(8);
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

// import 'dart:typed_data';
class Symbol {
  final int value;

  Symbol(this.value);

  Uint8List writeAsString() {
    const int mask = 0xFF;
    final buffer = Uint8List(7);

    int v = value;
    int index = 0;

    for (int i = 0; i < 7; ++i, v >>= 8) {
      if (v == 0) {
        break;
      }

      buffer[index] = v & mask;
      index++;
    }

    return buffer.sublist(0, index);
  }

  String toString() {
    final bytes = writeAsString();
    final symbolString = String.fromCharCodes(bytes);
    return symbolString;
  }

  factory Symbol.fromString(String symbolString) {
    final bytes = Uint8List.fromList(symbolString.codeUnits);
    int value = 0;

    for (int i = 0; i < bytes.length; i++) {
      value <<= 8;
      value |= bytes[i];
    }

    return Symbol(value);
  }
}

void main() {
  final symbol = Symbol.fromString('9876543210');
  final symbolString = symbol.toString();
  print('Symbol String: $symbolString');
}


void main() {
  test('Test conversions of eosio types', () async {
    expect(true, true, reason: 'failed');

    // const name = Name.from('foo')
    // assert.equal(name.equals('foo'), true)
    // assert.equal(name.equals(UInt64.from('6712615244595724288')), true)
    // assert.equal(name.equals(UInt64.from('12345')), false)
    // assert.equal(name.equals('bar'), false)

    final foo = stringToEosName('foo');
    print('val: ${foo}');
    expect(foo, 6712615244595724288);

    final nameAsString = getEosNameAsString(foo);
    print('nameAsString: $nameAsString');

    expect(nameAsString, 'foo');

    // final fooSymbol = intNameToString(foo);
    // print('sym: $fooSymbol');
  });
}
