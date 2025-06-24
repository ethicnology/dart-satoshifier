import 'package:flutter_test/flutter_test.dart';

import 'bip21_test.dart' as bip21;
import 'bitcoin_addresses_test.dart' as bitcoin;
import 'bolt11_test.dart' as bolt11;
import 'descriptor_test.dart' as descriptor;
import 'liquid_addresses_test.dart' as liquid;
import 'psbt_test.dart' as psbt;
import 'satoshifier_test.dart' as satoshifier;
import 'bdk_test.dart' as bdk;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Integration Tests', () {
    bip21.main();
    bitcoin.main();
    bolt11.main();
    descriptor.main();
    liquid.main();
    psbt.main();
    satoshifier.main();

    bdk.main();
  });
}
