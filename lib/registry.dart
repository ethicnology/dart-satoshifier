import 'package:satoshifier/satoshifier.dart';

typedef ParserFunction = Future<Satoshifier> Function(String data);

class Registry {
  Registry._();

  static final List<ParserFunction> _parsers = [
    BitcoinAddressParser.parse,
    Bip21Parser.parse,
    PsbtParser.parse,
    Bolt11Parser.parse,
    LiquidAddressParser.parse,
    DescriptorParser.parse,
  ];

  static Future<Satoshifier> parse(String data) async {
    if (data.trim().isEmpty) throw 'Input is empty';

    await LibSatoshifier.init();

    final trimmed = data.trim();
    for (final parser in _parsers) {
      try {
        return await parser(trimmed);
      } catch (_) {
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
