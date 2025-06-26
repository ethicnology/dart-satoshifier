import 'package:flutter_test/flutter_test.dart';
import 'package:satoshifier/satoshifier.dart';

import '_const.dart';

void main() {
  group('Descriptor', () {
    test('decodes a testnet descriptor', () async {
      const testnetDescriptor =
          'wpkh([$walletMasterFingerprint/84h/1h/1984h]$xpub/0/*)';
      final satoshifier = await WatchOnlyParser.parse(testnetDescriptor);
      expect(satoshifier, isA<WatchOnly>());
      final descriptor = (satoshifier as WatchOnly).descriptor;
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, xpub);
      expect(descriptor.fingerprint, walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinTestnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 1984);
    });

    test('decodes a BIP44 / XPUB descriptor', () {
      final descriptor = Descriptor.parse(descriptorP2pkhBip44);
      expect(descriptor.operand, ScriptOperand.pkh);
      expect(descriptor.pubkey, xpub);
      expect(descriptor.fingerprint, walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip44);
      expect(descriptor.account, 0);
    });

    test('decodes a BIP49 / SH(WPKH) / YPUB descriptor', () {
      final descriptor = Descriptor.parse(descriptorP2shBip49);
      expect(descriptor.operand, ScriptOperand.shwpkh);
      expect(descriptor.pubkey, xpub);
      expect(descriptor.fingerprint, walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip49);
      expect(descriptor.account, 0);
    });

    test('decodes a BIP84 / ZPUB descriptor', () {
      final descriptor = Descriptor.parse(descriptorP2wpkhBip84);
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, xpub);
      expect(descriptor.fingerprint, walletMasterFingerprint);
      expect(descriptor.network, Network.bitcoinMainnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 0);
    });

    test('decodes a liquid descriptor', () {
      const liquidCoinType = '1667h';
      const liquidDescriptor =
          'wpkh([$walletMasterFingerprint/84h/$liquidCoinType/0h]$xpub/0/*)';
      final descriptor = Descriptor.parse(liquidDescriptor);
      expect(descriptor.operand, ScriptOperand.wpkh);
      expect(descriptor.pubkey, xpub);
      expect(descriptor.fingerprint, walletMasterFingerprint);
      expect(descriptor.network, Network.liquidMainnet);
      expect(descriptor.derivation, Derivation.bip84);
      expect(descriptor.account, 0);
    });

    group('creates Descriptor from ExtendedPubkey', () {
      test('creates descriptor from parsed xpub', () {
        final extendedPubkey = ExtendedPubkey.parse(xpub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);
        expect(descriptor.pubkey, extendedPubkey.pubBase58);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });

      test('creates descriptor from parsed ypub', () {
        final extendedPubkey = ExtendedPubkey.parse(ypub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);
        expect(descriptor.pubkey, extendedPubkey.pubBase58);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });

      test('creates descriptor from parsed zpub', () {
        final extendedPubkey = ExtendedPubkey.parse(zpub);
        final descriptor = Descriptor.fromExtendedPubkey(extendedPubkey);
        expect(descriptor.pubkey, extendedPubkey.pubBase58);
        expect(descriptor.network, extendedPubkey.network);
        expect(descriptor.derivation, extendedPubkey.derivation);
      });
    });
  });
}
