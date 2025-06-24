import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

import '_constants.dart';

void main() {
  group('Psbt', () {
    test('handles valid PSBT format', () async {
      final result = await Satoshifier.parse(psbtBase64);
      expect(result, isA<Psbt>());
    });
  });
}
