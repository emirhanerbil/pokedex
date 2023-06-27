import 'package:flutter/material.dart';

BoxShadow PokemonBoxShadow(String pokeType) {
  if (pokeType == "water") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.blue.shade900);
  } else if (pokeType == "fire") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.orange.shade900);
  } else if (pokeType == "grass") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.green.shade900);
  } else {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.blue);
  }
}
