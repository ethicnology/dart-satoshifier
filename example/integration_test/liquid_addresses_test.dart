import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  final valids = [
    TestValue.liquidAddressMain,
    // New test values
    TestValue.liquidCompatible,
    TestValue.liquidSegwitLowercase,
    TestValue.liquidSegwitUppercase,
  ];

  group('Liquid Addresses', () {
    for (var address in valids) {
      test('parses $address', () async {
        final result = await Satoshifier.parse(address);
        expect(result, isA<LiquidAddress>());
      });
    }
  });
}
