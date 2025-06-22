import 'package:bdk_flutter/bdk_flutter.dart' as bdk;
import 'package:lwk/lwk.dart' as lwk;

enum Network {
  mainnet,
  testnet,
  signet,
  regtest;

  static Network fromBdkNetwork(bdk.Network bdkNetwork) {
    switch (bdkNetwork) {
      case bdk.Network.bitcoin:
        return Network.mainnet;
      case bdk.Network.testnet:
        return Network.testnet;
      case bdk.Network.signet:
        return Network.signet;
      case bdk.Network.regtest:
        return Network.regtest;
    }
  }

  static Network fromLwkNetwork(lwk.Network lwkNetwork) {
    switch (lwkNetwork) {
      case lwk.Network.mainnet:
        return Network.mainnet;
      case lwk.Network.testnet:
        return Network.testnet;
    }
  }
}
