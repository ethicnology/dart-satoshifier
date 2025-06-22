import 'package:dart_bip21/dart_bip21.dart';
import 'package:satoshifier/satoshifier.dart';
import 'package:satoshifier/utils.dart';

class Bip21Parser {
  static const _supportedSchemes = [
    'bitcoin',
    'liquidnetwork',
    'liquidtestnet',
  ];

  static Future<Satoshifier> parse(String data) async {
    for (final scheme in _supportedSchemes) {
      try {
        bip21.decode(data, scheme);
      } catch (_) {
        continue;
      }

      final uri = bip21.decode(data, scheme);
      if (uri.urnScheme == scheme) {
        switch (scheme) {
          case 'bitcoin':
            await BitcoinAddressParser.parse(uri.address);
          case 'liquidnetwork':
            await LiquidAddressParser.parse(uri.address);
          case 'liquidtestnet':
            await LiquidAddressParser.parse(uri.address);
          default:
            throw 'Unhandled scheme: $scheme';
        }

        final amount = uri.options['amount'] as double?;
        final sats = amount != null ? Utils.btcToSats(amount.toString()) : 0;

        return Satoshifier.bip21(
          address: uri.address,
          uri: uri.toString(),
          label: uri.options['label'] as String? ?? '',
          message: uri.options['message'] as String? ?? '',
          sats: sats,
          lightning: uri.options['lightning'] as String? ?? '',
          pj: uri.options['pj'] as String? ?? '',
          pjos: uri.options['pjos'] as String? ?? '',
        );
      }
    }

    throw 'Invalid BIP21 URI';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
