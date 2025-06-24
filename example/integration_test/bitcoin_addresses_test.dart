import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

import '_constants.dart';

void main() {
  const mainnetAddresses = [mainnetP2PKH, mainnetP2SH, mainnetBech32];
  const testnetAddresses = [testnetP2PKH, testnetP2SH, testnetBech32];

  group('Bitcoin Addresses', () {
    test('parses all valid addresses', () async {
      for (final address in [...mainnetAddresses, ...testnetAddresses]) {
        final result = await BitcoinAddressParser.parse(address);
        expect(result, isA<BitcoinAddress>());
        expect((result as BitcoinAddress).address, address);
        if (mainnetAddresses.contains(address)) {
          expect((result).network, Network.mainnet);
        } else if (testnetAddresses.contains(address)) {
          expect((result).network, Network.testnet);
        }
      }
    });
  });
}
