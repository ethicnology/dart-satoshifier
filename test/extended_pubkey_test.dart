import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

import '_const.dart';

void main() {
  group('ExtendedPubkey', () {
    test('parses xpub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(xpub);
      expect(parsed.pubBase58, xpub);
      expect(parsed.fingerprint, xpubFingerprint);
    });

    test('parses ypub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(ypub);
      expect(parsed.pubBase58, ypub);
      expect(parsed.fingerprint, ypubFingerprint);
    });

    test('parses zpub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(zpub);
      expect(parsed.pubBase58, zpub);
      expect(parsed.fingerprint, zpubFingerprint);
    });

    group('from descriptor', () {
      test('creates ExtendedPubkey from xpub descriptor', () {
        final descriptor = Descriptor.parse(descriptorP2pkhBip44);
        final extendedPubkey = ExtendedPubkey.fromDescriptor(descriptor);

        expect(extendedPubkey.pubBase58, descriptor.pubkey);
        expect(extendedPubkey.network, descriptor.network);
        expect(extendedPubkey.derivation, descriptor.derivation);
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });

      test('creates ExtendedPubkey from ypub descriptor', () {
        final descriptor = Descriptor.parse(descriptorP2shBip49);
        final extendedPubkey = ExtendedPubkey.fromDescriptor(descriptor);

        expect(extendedPubkey.pubBase58, descriptor.pubkey);
        expect(extendedPubkey.network, descriptor.network);
        expect(extendedPubkey.derivation, descriptor.derivation);
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });

      test('creates ExtendedPubkey from zpub descriptor', () {
        final descriptor = Descriptor.parse(descriptorP2wpkhBip84);
        final extendedPubkey = ExtendedPubkey.fromDescriptor(descriptor);

        expect(extendedPubkey.pubBase58, descriptor.pubkey);
        expect(extendedPubkey.network, descriptor.network);
        expect(extendedPubkey.derivation, descriptor.derivation);
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });
    });
  });
}
