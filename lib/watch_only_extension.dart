import 'package:convert/convert.dart';
import 'package:satoshifier/satoshifier.dart';

extension WatchOnlyExtension on WatchOnly {
  String get masterFingerprint => descriptor.fingerprint;

  ExtendedPubkey? get extendedPubkey =>
      ExtendedPubkey.tryParse(descriptor.pubkey);

  String get pubkeyFingerprint => extendedPubkey?.fingerprint ?? '';

  bool get canGenerateValidPsbt {
    if (masterFingerprint.isEmpty) return false;
    if (masterFingerprint == pubkeyFingerprint) return false;
    if (masterFingerprint.length != 8) return false;
    if (hex.decode(masterFingerprint).length != 4) return false;
    return true;
  }
}
