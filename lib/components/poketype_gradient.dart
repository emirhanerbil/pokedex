import 'package:flutter/material.dart';

LinearGradient pokeTypeGradient(String pokeType) {
  if (pokeType == "Grass") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.green.shade900,
          Colors.green.shade500,
          Colors.green.shade300,
        ]);
  } else if (pokeType == "Fire") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.orange.shade900,
          Colors.orange.shade500,
          Colors.orange.shade300,
        ]);
  } else if (pokeType == "Bug") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.purple.shade900,
          Colors.purple.shade500,
          Colors.purple.shade300,
        ]);
  } else if (pokeType == "Rock") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.grey.shade900,
          Colors.grey.shade500,
          Colors.grey.shade300,
        ]);
  } else if (pokeType == "Normal") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.brown.shade800,
          Colors.brown.shade500,
          Colors.brown.shade300,
        ]);
  } else if (pokeType == "Dragon") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.lightBlueAccent.shade200,
          Colors.lightBlueAccent.shade400,
          Colors.lightBlueAccent.shade700,
        ]);
  } else if (pokeType == "Water" || pokeType == "Ice") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.lightBlue.shade200,
          Colors.lightBlue.shade400,
          Colors.lightBlue.shade700,
        ]);
  } else if (pokeType == "Psychic" ||
      pokeType == "Ghost" ||
      pokeType == "Poison") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.deepPurple.shade200,
          Colors.deepPurple.shade400,
          Colors.deepPurple.shade700,
        ]);
  } else if (pokeType == "Electric") {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.yellow.shade300,
          Colors.yellow.shade500,
          Colors.yellow.shade700,
        ]);
  } else {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.grey.shade200,
          Colors.grey.shade400,
          Colors.grey.shade700,
        ]);
  }
}
