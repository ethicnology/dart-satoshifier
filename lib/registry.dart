import 'package:satoshifier/satoshifier.dart';

typedef ParserFunction = Future<Satoshifier> Function(String data);

class Registry {
  Registry._();

  static final List<(Type, ParserFunction)> _parsers = [
    (BitcoinAddressParser, BitcoinAddressParser.parse),
    (Bip21Parser, Bip21Parser.parse),
    (PsbtParser, PsbtParser.parse),
    (Bolt11Parser, Bolt11Parser.parse),
    (LiquidAddressParser, LiquidAddressParser.parse),
    // (WatchOnlyParser, WatchOnlyParser.parse),
  ];

  static Future<Satoshifier> parse(String data) async {
    if (data.trim().isEmpty) throw 'Input is empty';

    await LibSatoshifier.init();

    final trimmed = data.trim();
    for (final (_, parser) in _parsers) {
      try {
        return await parser(trimmed);
      } catch (e) {
        // print('${type.toString()}: $e');
        continue;
      }
    }
    throw 'No parser found for: $data';
  }

  static Future<Satoshifier?> tryParse(String data) async {
    try {
      return await parse(data);
    } catch (_) {
      return null;
    }
  }
}
