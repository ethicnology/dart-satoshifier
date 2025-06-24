import 'package:bdk_flutter/bdk_flutter.dart' as bdk;
import 'package:satoshifier/satoshifier.dart';

class DescriptorParser {
  static Future<Satoshifier> parse(String data) async {
    try {
      for (var network in Network.values) {
        try {
          final descriptor = await bdk.Descriptor.create(
            descriptor: data,
            network: network.toBdk,
          );

          return Satoshifier.descriptor(
            descriptor: descriptor.asString(),
            network: network,
          );
        } catch (_) {}
      }

      throw 'Invalid descriptor';
    } catch (_) {
      rethrow;
    }
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
