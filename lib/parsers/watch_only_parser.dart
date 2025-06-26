import 'package:satoshifier/satoshifier.dart';

class WatchOnlyParser {
  static Future<Satoshifier> parse(String data) async {
    try {
      final extendedPubkey = ExtendedPubkey.parse(data);
      final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);
      return Satoshifier.watchOnly(descriptor: descriptor);
    } catch (_) {}

    try {
      final descriptor = Descriptor.parse(data);
      return Satoshifier.watchOnly(descriptor: descriptor);
    } catch (_) {}

    throw 'Invalid watch only data: $data';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
