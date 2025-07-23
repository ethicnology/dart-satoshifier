import 'package:lwk/lwk.dart' as lwk;
import 'package:satoshifier/satoshifier.dart';

class LiquidAddressParser {
  static Future<Satoshifier> parse(String data) async {
    final input =
        Utils.isUppercaseAlphanumeric(data) ? data.toLowerCase() : data;

    for (var lwkNetwork in lwk.Network.values) {
      try {
        await lwk.Address.validate(addressString: input);
        final network = Network.fromLwkNetwork(lwkNetwork);
        return Satoshifier.liquidAddress(address: data, network: network);
      } catch (_) {}
    }

    throw 'Invalid liquid address: $input';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
