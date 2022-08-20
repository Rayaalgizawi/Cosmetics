import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-8334736678756970/9577104280';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
