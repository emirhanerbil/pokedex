import 'package:flutter/material.dart';

BoxShadow PokemonBoxShadow(String pokeType) {
  if (pokeType == "Water" || pokeType == "Ice") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.blue.shade900);
  } else if (pokeType == "Fire") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.orange.shade900);
  } else if (pokeType == "Grass") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.green.shade900);
  } else if (pokeType == "Bug") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.purple.shade900);
  } else if (pokeType == "Rock") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.grey.shade900);
  } else if (pokeType == "Normal") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.brown.shade900);
  } else if (pokeType == "Dragon") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.lightBlueAccent.shade700);
  } else if (pokeType == "Psychic" ||
      pokeType == "Ghost" ||
      pokeType == "Poison") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.deepPurple.shade900);
  } else if (pokeType == "Electric") {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.yellow.shade900);
  } else {
    return BoxShadow(
        spreadRadius: 0,
        blurRadius: 5,
        blurStyle: BlurStyle.outer,
        offset: Offset.zero,
        color: Colors.grey.shade700);
  }
}
