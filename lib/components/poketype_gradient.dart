import 'package:flutter/material.dart';

LinearGradient pokeTypeGradient(String pokeType) {
  if (pokeType == "grass") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.green.shade900,
          Colors.green.shade500,
          Colors.green.shade300,
        ]);
  } else if (pokeType == "fire") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.orange.shade900,
          Colors.orange.shade500,
          Colors.orange.shade300,
        ]);
  } else {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.blue.shade900,
          Colors.blue.shade500,
          Colors.blue.shade300,
        ]);
  }
}
