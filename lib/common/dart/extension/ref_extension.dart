import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefExtension on Ref {
  void cacheFor(Duration duration) {
    final link = keepAlive();
    Timer(duration, () => link.close());
  }
}
