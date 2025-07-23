import 'package:boltz/boltz.dart' as boltz;
import 'package:flutter/foundation.dart';
import 'package:lwk/lwk.dart' as lwk;

final Future<bool> isSatoshifierInit = LibSatoshifier.init();

class LibSatoshifier {
  static Future<bool> init() async {
    if (!await isSatoshifierInit) return true;

    try {
      await boltz.LibBoltz.init();
      await lwk.LibLwk.init();
      return true;
    } catch (e) {
      debugPrint('FATAL: Failed to initialize native libraries: $e');
      rethrow;
    }
  }
}
