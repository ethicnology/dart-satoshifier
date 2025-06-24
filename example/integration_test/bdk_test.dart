import 'package:flutter_test/flutter_test.dart';
import 'package:bdk_flutter/bdk_flutter.dart' as bdk;

import '_constants.dart';

void main() {
  group('test bdk', () {
    test('combined descriptor fails on mainnet…', () async {
      expect(() async {
        await bdk.Descriptor.create(
          descriptor: combinedDescriptor,
          network: bdk.Network.bitcoin,
        );
      }, throwsA(anything));
    });

    test('combined descriptor fails on testnet…', () async {
      expect(() async {
        await bdk.Descriptor.create(
          descriptor: combinedDescriptor,
          network: bdk.Network.bitcoin,
        );
      }, throwsA(anything));
    });
  });

  group('test bdk DescriptorPublicKey', () {
    test('external descriptor fails on mainnet…', () async {
      expect(() async {
        await bdk.DescriptorPublicKey.fromString(externalDescriptor);
      }, throwsA(anything));
    });

    test('external descriptor', () async {
      expect(() async {
        await bdk.DescriptorPublicKey.fromString(externalDescriptor);
      }, throwsA(anything));
    });

    test('Why does this work for an xpub but not for a ypub?', () async {
      expect(() async {
        await bdk.DescriptorPublicKey.fromString(xpub);
      }, returnsNormally);
    });

    test('ypub', () async {
      expect(
        () async => await bdk.DescriptorPublicKey.fromString(ypub),
        throwsA(anything),
      );
    });

    test('ypub', () async {
      expect(
        () async => await bdk.DescriptorPublicKey.fromString(zpub),
        throwsA(anything),
      );
    });
  });

  group('test bdk PkOrF.xOnlyPubkey', () {
    test('Why does this work for an xpub but not for a ypub?', () async {
      expect(() async {
        bdk.PkOrF.xOnlyPubkey(value: xpub);
      }, returnsNormally);
    });

    test('ypub', () async {
      expect(() async => bdk.PkOrF.xOnlyPubkey(value: ypub), returnsNormally);
    });

    test('ypub', () async {
      expect(() async => bdk.PkOrF.xOnlyPubkey(value: zpub), returnsNormally);
    });
  });

  group('test bdk PkOrF.pubkey', () {
    test(
      'xpub',
      () async =>
          expect(() async => bdk.PkOrF.pubkey(value: xpub), returnsNormally),
    );

    test('ypub', () async {
      expect(() async => bdk.PkOrF.pubkey(value: ypub), returnsNormally);
    });

    test('ypub', () async {
      expect(() async => bdk.PkOrF.pubkey(value: zpub), returnsNormally);
    });
  });
}
