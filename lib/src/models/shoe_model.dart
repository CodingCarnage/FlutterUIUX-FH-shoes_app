import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  List<double> _shoeSizes;

  List<double> get shoeSizes => this._shoeSizes;

  set shoeSizes(List<double> shoeSizes) {
    this._shoeSizes = shoeSizes;
  }
  
  String _assetImage = 'assets/images/azul.png';

  String get assetImage => this._assetImage;

  set assetImage(String assetImage) {
    this._assetImage = assetImage;
    notifyListeners();
  }

  double _shoeSizeSelected;

  double get shoeSizeSelected => this._shoeSizeSelected;

  set shoeSizeSelected(double shoeSizeSelected) {
    this._shoeSizeSelected = shoeSizeSelected;
    notifyListeners();
  }
}