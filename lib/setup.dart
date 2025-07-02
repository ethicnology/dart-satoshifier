import 'package:boltz/boltz.dart' as boltz;
import 'package:flutter/foundation.dart';
import 'package:lwk/lwk.dart' as lwk;

class LibSatoshifier {
  static Future<void> init() async {
    try {
      await boltz.LibBoltz.init();
      await lwk.LibLwk.init();
    } catch (e) {
      debugPrint('FATAL: Failed to initialize native libraries: $e');
      rethrow;
    }
  }
}
