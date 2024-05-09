import 'package:flutter/material.dart';

extension IntExtensions on int {
  Widget width() {
    return SizedBox(
      width: toDouble(),
    );
  }

  Widget height() {
    return SizedBox(
      height: toDouble(),
    );
  }
}
