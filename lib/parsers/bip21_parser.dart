import 'package:bip21_uri/bip21_uri.dart';
import 'package:satoshifier/satoshifier.dart';
import 'package:satoshifier/utils.dart';

class Bip21Parser {
  static Future<Satoshifier> parse(String data) async {
    final uri = bip21.decode(data);

    switch (uri.scheme) {
      case 'bitcoin':
        await BitcoinAddressParser.parse(uri.address);
      case 'liquid':
        await LiquidAddressParser.parse(uri.address);
      case 'liquidnetwork':
        await LiquidAddressParser.parse(uri.address);
      case 'liquidtestnet':
        await LiquidAddressParser.parse(uri.address);
      default:
        print('Unhandled scheme: ${uri.scheme} ${uri.address} not verified');
    }

    final amount = uri.amount;
    final sats = amount != null ? Utils.btcToSats(amount.toString()) : 0;

    return Satoshifier.bip21(
      scheme: uri.scheme,
      address: uri.address,
      uri: uri.toString(),
      label: uri.label ?? '',
      message: uri.message ?? '',
      sats: sats,
      lightning: uri.options['lightning'] as String? ?? '',
      pj: uri.options['pj'] as String? ?? '',
      pjos: uri.options['pjos'] as String? ?? '',
    );
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
