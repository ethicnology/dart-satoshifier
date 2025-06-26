import 'package:satoshifier/satoshifier.dart';

enum Derivation {
  bip44("Legacy", "P2PKH", "m/44h/0h/0h"),
  bip49("Nested SegWit", "P2SH-P2WPKH", "m/49h/0h/0h"),
  bip84("Native SegWit", "P2WPKH", "m/84h/0h/0h");

  final String label;
  final String acronym;
  final String path;

  const Derivation(this.label, this.acronym, this.path);

  static Derivation fromPurpose(String derivationPurpose) {
    switch (derivationPurpose) {
      case '44h' || "44'":
        return Derivation.bip44;
      case '49h' || "49'":
        return Derivation.bip49;
      case '84h' || "84'":
        return Derivation.bip84;
      default:
        throw 'Unknown derivation purpose: $derivationPurpose';
    }
  }

  static Derivation fromXpubType(XpubType xpubType) {
    if (xpubType == XpubType.xpub || xpubType == XpubType.tpub) {
      return Derivation.bip44;
    }
    if (xpubType == XpubType.ypub || xpubType == XpubType.upub) {
      return Derivation.bip49;
    }
    if (xpubType == XpubType.zpub || xpubType == XpubType.vpub) {
      return Derivation.bip84;
    }

    throw 'Invalid xpub type: $xpubType';
  }
}
