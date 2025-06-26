import 'dart:typed_data';

import 'package:bip32/bip32.dart' as bip32;
import 'package:bs58/bs58.dart';
import 'package:satoshifier/xpub_type.dart';

class Bip32Utils {
  static Uint8List fingerprint(List<int> pubkey, XpubType type) {
    final keyWithoutVersion = pubkey.sublist(4);
    final key = Uint8List.fromList([...type.version, ...keyWithoutVersion]);
    final bip32Key = bip32.BIP32.fromBase58(base58.encode(key));
    return bip32Key.fingerprint;
  }
}
