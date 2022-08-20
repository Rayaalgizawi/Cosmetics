import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-8334736678756970/9122858467';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
