import 'package:bdk_flutter/bdk_flutter.dart' as bdk;
import 'package:satoshifier/satoshifier.dart';

class BitcoinAddressParser {
  static Future<Satoshifier> parse(String data) async {
    for (var bdkNetwork in bdk.Network.values) {
      try {
        await bdk.Address.fromString(s: data, network: bdkNetwork);
        final network = Network.fromBdkNetwork(bdkNetwork);
        return Satoshifier.bitcoinAddress(address: data, network: network);
      } catch (_) {}
    }

    throw 'Invalid bitcoin address';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
