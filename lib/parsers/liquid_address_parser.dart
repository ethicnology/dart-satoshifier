import 'package:lwk/lwk.dart' as lwk;
import 'package:satoshifier/enums/network.dart';
import 'package:satoshifier/satoshifier.dart' show Satoshifier;

class LiquidAddressParser {
  static Future<Satoshifier> parse(String data) async {
    for (var lwkNetwork in lwk.Network.values) {
      try {
        await lwk.Address.validate(addressString: data);
        final network = Network.fromLwkNetwork(lwkNetwork);
        return Satoshifier.liquidAddress(address: data, network: network);
      } catch (_) {}
    }

    throw 'Invalid liquid address: $data';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
