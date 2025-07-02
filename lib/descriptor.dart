import 'package:satoshifier/satoshifier.dart';

class Descriptor {
  final ScriptOperand operand;
  final String fingerprint;
  final String pubkey;
  final Network network;
  final Derivation derivation;
  final int account;

  Descriptor({
    required this.operand,
    required this.fingerprint,
    required this.pubkey,
    required this.network,
    required this.derivation,
    required this.account,
  });

  static Descriptor parse(String string) {
    final descriptor = string.trim();
    final match = RegExp(
      r'(\w+)\(\[([a-fA-F0-9]+)/([0-9]+h)/([0-9]+h)/([0-9]+h)\]/?([^/<]+)',
    ).firstMatch(descriptor.trim());

    if (match == null) throw 'Invalid descriptor format: $descriptor';

    final _ = match.group(1)!;
    final fingerprint = match.group(2)!;
    final derivationPurpose = match.group(3)!;
    final coinTypeString = match.group(4)!;
    final coinTypeInt = int.parse(Utils.trimLastQuoteOrH(coinTypeString));
    final accountString = match.group(5)!;
    final pubkey = match.group(6)!;

    final operand = ScriptOperand.fromDescriptor(descriptor);
    final derivation = Derivation.fromPurpose(derivationPurpose);
    final coinType = CoinType.fromInt(coinTypeInt);
    final network = coinType.toNetwork();
    final account = int.parse(Utils.trimLastQuoteOrH(accountString));

    return Descriptor(
      operand: operand,
      fingerprint: fingerprint,
      pubkey: pubkey,
      network: network,
      derivation: derivation,
      account: account,
    );
  }

  static Descriptor fromExtendedPubkey(ExtendedPubkey extendedPubkey) {
    return Descriptor(
      operand: ScriptOperand.fromExtendedPubkey(extendedPubkey),
      fingerprint: '',
      pubkey: extendedPubkey.xpub,
      network: extendedPubkey.network,
      derivation: extendedPubkey.derivation,
      account: 0,
    );
  }

  String get origin {
    if (fingerprint.isEmpty) return '';
    return '[$fingerprint/${derivation.purpose}/${coinType.value}h/${account}h]';
  }

  bool get _isShwpkh => operand == ScriptOperand.shwpkh;

  String get combined {
    return "${operand.value}($origin$pubkey/<0;1>/*)${_isShwpkh ? ')' : ''}";
  }

  String get internal {
    return "${operand.value}($origin$pubkey/1/*)${_isShwpkh ? ')' : ''}";
  }

  String get external {
    return "${operand.value}($origin$pubkey/0/*)${_isShwpkh ? ')' : ''}";
  }

  CoinType get coinType =>
      network.isBitcoin ? CoinType.bitcoin : CoinType.liquid;
}
