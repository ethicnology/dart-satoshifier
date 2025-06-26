import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  group('ExtendedPubkey', () {
    test('parses xpub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(TestValue.xpub);
      expect(parsed.pubBase58, TestValue.xpub);
      expect(parsed.fingerprint, TestValue.xpubFingerprint);
    });

    test('parses ypub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(TestValue.ypub);

      expect(parsed.pubBase58, TestValue.ypub);
      expect(parsed.fingerprint, TestValue.ypubFingerprint);
    });

    test('parses zpub and pubBase58 matches input', () {
      final parsed = ExtendedPubkey.parse(TestValue.zpub);

      expect(parsed.pubBase58, TestValue.zpub);
      expect(parsed.fingerprint, TestValue.zpubFingerprint);
    });

    group('from descriptor', () {
      test('creates ExtendedPubkey from bip44 descriptor', () {
        final descriptor = Descriptor.parse(TestValue.descriptorP2pkhBip44);
        final extendedPubkey = ExtendedPubkey.parse(descriptor.pubkey);

        expect(extendedPubkey.pubBase58, TestValue.xpub);
        expect(extendedPubkey.fingerprint, TestValue.xpubFingerprint);

        expect(descriptor.derivation, extendedPubkey.derivation);
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });

      test('creates ExtendedPubkey from bip49 descriptor', () {
        final descriptor = Descriptor.parse(TestValue.descriptorP2shBip49);
        final extendedPubkey = ExtendedPubkey.parse(descriptor.pubkey);

        expect(extendedPubkey.pubBase58, TestValue.xpub);
        expect(extendedPubkey.fingerprint, TestValue.xpubFingerprint);

        expect(extendedPubkey.derivation, isNot(descriptor.derivation));
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });

      test('creates ExtendedPubkey from bip84 descriptor', () {
        final descriptor = Descriptor.parse(TestValue.descriptorP2wpkhBip84);
        final extendedPubkey = ExtendedPubkey.parse(descriptor.pubkey);

        expect(extendedPubkey.pubBase58, TestValue.xpub);
        expect(extendedPubkey.fingerprint, TestValue.xpubFingerprint);

        expect(extendedPubkey.derivation, isNot(descriptor.derivation));
        expect(extendedPubkey.fingerprint, isNot(descriptor.fingerprint));
      });
    });
  });
}
