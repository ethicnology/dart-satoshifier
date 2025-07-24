import 'package:boltz/boltz.dart' as boltz;
import 'package:flutter/foundation.dart';
import 'package:lwk/lwk.dart' as lwk;

bool isSatoshifierInit = false;

class LibSatoshifier {
  static Future<bool> init() async {
    if (isSatoshifierInit) return true;

    try {
      await Future.wait([boltz.LibBoltz.init(), lwk.LibLwk.init()]);
      isSatoshifierInit = true;
      return true;
    } catch (e) {
      debugPrint('FATAL: Failed to initialize native libraries: $e');
      rethrow;
    }
  }
}
