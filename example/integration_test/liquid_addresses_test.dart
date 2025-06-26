import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  final valids = [TestValue.liquidAddressMain];

  group('Liquid Addresses', () {
    test('parses all valid addresses', () async {
      for (final address in valids) {
        final result = await Satoshifier.parse(address);
        expect(result, isA<LiquidAddress>());
      }
    });
  });
}
