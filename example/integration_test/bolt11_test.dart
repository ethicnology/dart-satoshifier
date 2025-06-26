import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  group('Bolt11', () {
    test('handles mainnet bolt11 invoices', () async {
      final result = await Satoshifier.parse(TestValue.bolt11);
      expect(result, isA<Bolt11>());
    });
  });
}
