import 'package:satoshifier/satoshifier.dart';

extension WatchOnlyExtension on WatchOnly {
  String get masterFingerprint => descriptor.fingerprint;

  ExtendedPubkey? get extendedPubkey =>
      ExtendedPubkey.tryParse(descriptor.pubkey);

  String get pubkeyFingerprint => extendedPubkey?.fingerprint ?? '';
}
