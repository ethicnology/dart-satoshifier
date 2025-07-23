import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  final mainnetAddresses = [
    TestValue.mainnetP2PKH,
    TestValue.mainnetP2SH,
    TestValue.mainnetBech32,
    // New test values
    TestValue.bitcoinSegwitUppercase,
    TestValue.bitcoinSegwitLowercase,
    TestValue.bitcoinLegacy,
    TestValue.bitcoinCompatible,
  ];
  final testnetAddresses = [
    TestValue.testnetP2PKH,
    TestValue.testnetP2SH,
    TestValue.testnetBech32,
  ];

  group('Bitcoin Addresses', () {
    for (final address in [...mainnetAddresses, ...testnetAddresses]) {
      test('parses $address', () async {
        final result = await BitcoinAddressParser.parse(address);
        expect(result, isA<BitcoinAddress>());
        expect((result as BitcoinAddress).address, address);
        if (mainnetAddresses.contains(address)) {
          expect((result).network, Network.bitcoinMainnet);
        } else if (testnetAddresses.contains(address)) {
          expect((result).network, Network.bitcoinTestnet);
        }
      });
    }
  });
}
