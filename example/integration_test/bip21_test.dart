import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  group('bitcoin: Bip21', () {
    test('URIs', () async {
      final result = await Satoshifier.parse(TestValue.bip21UriBasic);
      expect(result, isA<Bip21>());
      expect((result as Bip21).address, TestValue.mainnetBech32);
    });

    test('bitcoin: URIs with amount', () async {
      final result = await Bip21Parser.parse(TestValue.bip21UriWithAmount);
      expect(result, isA<Bip21>());
      expect((result as Bip21).sats, 100000);
    });

    test('liquidnetwork: URIs', () async {
      final result = await Bip21Parser.parse(TestValue.liquidUriBasic);
      expect(result, isA<Bip21>());
      expect((result as Bip21).address, TestValue.liquidAddressMain);
    });

    // TODO: Add test for liquidtestnet: URIs
    // test('handles liquidtestnet: URIs', () async {
    //   final result = await Bip21Parser.parse(
    //     'liquidtestnet:',
    //   );
    //   expect(result, isA<Bip21>());
    // });
  });
}
