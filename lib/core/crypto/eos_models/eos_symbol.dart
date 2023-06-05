import 'dart:typed_data';

/// Parse EOSIO Symbol type to/from int
/// by Hypha, 2023
class EosSymbol {
  final int value;

  EosSymbol(this.value);

  factory EosSymbol.fromString(String symbolString) {
    final bytes = Uint8List.fromList(symbolString.codeUnits);

    int value = 0;
    for (int i = 0; i < bytes.length; i++) {
      value <<= 8;
      value |= bytes[i];
    }
    return EosSymbol(value);
  }

  @override
  String toString() {
    final bytes = writeAsString();
    return String.fromCharCodes(bytes);
  }

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
}
