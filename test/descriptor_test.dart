import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

void main() {
  group('Descriptor', () {
    test('decodes a BIP44 descriptor', () {
      final descriptor = Descriptor.parse(TestValue.descriptorP2pkhBip44);
      expect(descriptor.operand, ScriptOperand.pkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip44);
      expect(descriptor.account, 0);
      expect(descriptor.combined, TestValue.descriptorP2pkhBip44.split('#')[0]);
    });

    test('decodes a BIP49 descriptor', () {
      final descriptor = Descriptor.parse(TestValue.descriptorP2shBip49);
      expect(descriptor.operand, ScriptOperand.shwpkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip49);
      expect(descriptor.account, 0);
      expect(descriptor.combined, TestValue.descriptorP2shBip49.split('#')[0]);
    });

    test('decodes a BIP84 descriptor', () {
      final descriptor = Descriptor.parse(TestValue.descriptorP2wpkhBip84);
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 0);
      expect(
        descriptor.combined,
        TestValue.descriptorP2wpkhBip84.split('#')[0], // remove checksum
      );
    });

    test('decodes a testnet descriptor', () async {
      final testnetDescriptor =
          'wpkh([${TestValue.walletMasterFingerprint}/84h/1h/1984h]${TestValue.xpub}/0/*)';
      final satoshifier = await WatchOnlyDescriptorParser.parse(
        testnetDescriptor,
      );
      expect(satoshifier, isA<WatchOnlyDescriptor>());
      final descriptor = (satoshifier as WatchOnlyDescriptor).descriptor;
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinTestnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 1984);
    });

    test('decodes a change only descriptor', () {
      final descriptor = Descriptor.parse(TestValue.descriptorChangeOnly);
      expect(descriptor.operand, ScriptOperand.shwpkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip49);
      expect(descriptor.account, 0);
    });

    test('decodes a liquid descriptor', () {
      final liquidCoinType = '1667h';
      final liquidDescriptor =
          'wpkh([${TestValue.walletMasterFingerprint}/84h/$liquidCoinType/0h]${TestValue.xpub}/0/*)';
      final descriptor = Descriptor.parse(liquidDescriptor);
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, TestValue.xpub);
      expect(descriptor.fingerprint, TestValue.walletMasterFingerprint);
      expect(descriptor.network, Network.liquidMainnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 0);
    });

    group('creates Descriptor from ExtendedPubkey', () {
      test('creates descriptor from parsed xpub', () {
        final extendedPubkey = ExtendedPubkey.parse(TestValue.xpub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);

        expect(descriptor.fingerprint, '');
        expect(descriptor.origin, '');
        expect(descriptor.combined, 'pkh(${TestValue.xpub}/<0;1>/*)');
        expect(descriptor.internal, 'pkh(${TestValue.xpub}/1/*)');
        expect(descriptor.external, 'pkh(${TestValue.xpub}/0/*)');
        expect(descriptor.pubkey, extendedPubkey.xpub);
        expect(descriptor.pubkey, extendedPubkey.pubBase58);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });

      test('creates descriptor from parsed ypub', () {
        final extendedPubkey = ExtendedPubkey.parse(TestValue.ypub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);

        expect(descriptor.fingerprint, '');
        expect(descriptor.origin, '');
        expect(
          descriptor.combined,
          'sh(wpkh(${TestValue.ypubToXpub}/<0;1>/*))',
        );
        expect(descriptor.internal, 'sh(wpkh(${TestValue.ypubToXpub}/1/*))');
        expect(descriptor.external, 'sh(wpkh(${TestValue.ypubToXpub}/0/*))');
        expect(descriptor.pubkey, extendedPubkey.xpub);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });

      test('creates descriptor from parsed zpub', () {
        final extendedPubkey = ExtendedPubkey.parse(TestValue.zpub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);

        expect(descriptor.fingerprint, '');
        expect(descriptor.origin, '');
        expect(descriptor.combined, 'wsh(${TestValue.zpubToXpub}/<0;1>/*)');
        expect(descriptor.internal, 'wsh(${TestValue.zpubToXpub}/1/*)');
        expect(descriptor.external, 'wsh(${TestValue.zpubToXpub}/0/*)');
        expect(descriptor.pubkey, extendedPubkey.xpub);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });
    });
  });
}
