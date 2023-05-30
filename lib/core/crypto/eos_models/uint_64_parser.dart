import 'dart:typed_data';

/// parse int in big endiand and little endian encodings
/// Hypha, 2023
class Uint64Parser {
  final int value;

  Uint64Parser(this.value);

  // Little Endian parsing - EOSIO uses little endian encoding.
  factory Uint64Parser.fromBytesLE(Uint8List bytes) {
    int value = 0;
    for (int i = 7; i >= 0; i--) {
      value = (value << 8) | bytes[i];
    }
    return Uint64Parser(value);
  }

  // Big endian parsing
  factory Uint64Parser.fromBytesBE(Uint8List bytes) {
    final buffer = ByteData.view(bytes.buffer);
    return Uint64Parser(buffer.getUint64(0));
  }

  // Convert to bytes using Little Endian encoding
  Uint8List toBytesLE() {
    final bytes = Uint8List(8);
    for (int i = 0; i < 8; i++) {
      bytes[i] = (value >> (i * 8)) & 0xFF;
    }
    return bytes;
  }
}
