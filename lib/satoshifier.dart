library;

// exports
export 'network.dart' show Network;
export 'parsers/bitcoin_address_parser.dart' show BitcoinAddressParser;
export 'parsers/bip21_parser.dart' show Bip21Parser;
export 'parsers/bolt11_parser.dart' show Bolt11Parser;
export 'parsers/liquid_address_parser.dart' show LiquidAddressParser;
export 'parsers/psbt_parser.dart' show PsbtParser;
export 'setup.dart' show LibSatoshifier;

// imports
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:satoshifier/network.dart';
import 'package:satoshifier/registry.dart';

part 'satoshifier.freezed.dart';

@freezed
sealed class Satoshifier with _$Satoshifier {
  const factory Satoshifier.bitcoinAddress({
    required String address,
    required Network network,
  }) = BitcoinAddress;

  const factory Satoshifier.liquidAddress({
    required String address,
    required Network network,
  }) = LiquidAddress;

  const factory Satoshifier.lightningInvoice({required String invoice}) =
      LightningInvoice;

  const factory Satoshifier.bolt11({
    required String invoice,
    required int sats,
    required String paymentHash,
    @Default('') String description,
    required int expiresAt,
    required bool isTestnet,
  }) = Bolt11;

  const factory Satoshifier.bip21({
    required String uri,
    required String address,
    @Default(0) int sats,
    @Default('') String label,
    @Default('') String message,
    @Default('') String lightning,
    @Default('') String pj,
    @Default('') String pjos,
  }) = Bip21;

  const factory Satoshifier.psbt({required String psbt}) = Psbt;

  const Satoshifier._();

  bool isType<T>() => this is T;

  static Future<Satoshifier> parse(String data) async {
    return await Registry.parse(data);
  }

  static Future<Satoshifier?> tryParse(String data) async {
    return await Registry.tryParse(data);
  }
}
