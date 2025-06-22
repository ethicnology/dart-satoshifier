import 'package:bdk_flutter/bdk_flutter.dart' as bdk;
import 'package:satoshifier/satoshifier.dart';

class PsbtParser {
  static Future<Satoshifier> parse(String psbtBase64) async {
    try {
      final psbt = await bdk.PartiallySignedTransaction.fromString(psbtBase64);
      return Satoshifier.psbt(psbt: psbt.toString());
    } catch (_) {
      rethrow;
    }
  }

  static Future<Satoshifier?> tryParse(String psbtBase64) async {
    try {
      return await parse(psbtBase64);
    } catch (_) {
      return null;
    }
  }
}
