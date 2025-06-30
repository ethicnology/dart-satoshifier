import 'dart:typed_data';

import 'package:bip32_keys/bip32_keys.dart';
import 'package:bs58/bs58.dart';
import 'package:satoshifier/enums/xpub_type.dart';

class Bip32Utils {
  static Uint8List fingerprint(List<int> pubkey, XpubType type) {
    final keyWithoutVersion = pubkey.sublist(4);
    final key = Uint8List.fromList([...type.version, ...keyWithoutVersion]);
    final bip32Key = Bip32Keys.fromBase58(
      base58.encode(key),
      bypassVersion: (type == XpubType.xpub) ? false : true,
    );
    return bip32Key.fingerprint;
  }
}
