// calc_provider.dart

import 'package:flutter/material.dart';

class CalcProvider extends ChangeNotifier {
  bool _forAndroid = true;

  bool get forAndroid => _forAndroid;

  List<Color> get backgroundColors {
    if (_forAndroid) {
      return [
          Color.fromRGBO(144, 197, 236, 1.0),
          Color.fromRGBO(183, 179, 146, 1.0),

      ];
    } else {
      return [
        Color.fromRGBO(16, 35, 51, 1.0),
        Color.fromRGBO(16, 35, 51, 1.0),

      ];
    }
  }

  void toggleAndroid(bool value) {
    _forAndroid = value;
    notifyListeners();
  }
}
