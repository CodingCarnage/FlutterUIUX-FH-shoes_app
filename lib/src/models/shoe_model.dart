import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  String _assetsImage = 'assets/images/azul.png';

  String get assetsImage => this._assetsImage;

  set assetsImage(String assetsImage) {
    this._assetsImage = assetsImage;
    notifyListeners();
  }

  double _shoeSize = 8.5;

  double get shoeSize => this._shoeSize;

  set shoeSize(double shoeSize) {
    this._shoeSize = shoeSize;
    notifyListeners();
  }
}