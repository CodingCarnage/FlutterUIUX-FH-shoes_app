import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

void changeStatusBarLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

void changeStatusBarDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}
