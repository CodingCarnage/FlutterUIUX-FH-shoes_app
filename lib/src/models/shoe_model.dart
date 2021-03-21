import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  List<double> _shoeSizes;

  List<double> get shoeSizes => this._shoeSizes;

  set shoeSizes(List<double> shoeSizes) {
    this._shoeSizes = shoeSizes;
  }

  bool _fullScreen;

  bool get fullScreen => this._fullScreen;

  set fullScreen(bool fullScreen) {
    this._fullScreen = fullScreen;
  }
  
  String _assetsImage = 'assets/images/azul.png';

  String get assetsImage => this._assetsImage;

  set assetsImage(String assetsImage) {
    this._assetsImage = assetsImage;
    notifyListeners();
  }

  double _shoeSizeSelected;

  double get shoeSizeSelected => this._shoeSizeSelected;

  set shoeSizeSelected(double shoeSizeSelected) {
    this._shoeSizeSelected = shoeSizeSelected;
    notifyListeners();
  }
}