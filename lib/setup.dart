import 'package:boltz/boltz.dart' as boltz;
import 'package:lwk/lwk.dart' as lwk;

class LibSatoshifier {
  static Future<void> init() async {
    try {
      await boltz.LibBoltz.init();
      await lwk.LibLwk.init();
    } catch (e) {
      print('FATAL: Failed to initialize native libraries: $e');
      rethrow;
    }
  }
}
