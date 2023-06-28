import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/models/Pokemon.dart';

import '../components/text_widget.dart';

class PokemonPage extends StatelessWidget {
  final Pokedex pokemon;
  const PokemonPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: Column(children: [
            Container(
              height: 400,
              width: 200,
              child: Image.network(
                pokemon.img.toString(),
                fit: BoxFit.contain,
              ),
            ),
            textWidget("#${pokemon.num}", Colors.white),
            textWidget("${pokemon.name}", Colors.white),
            const SizedBox(height: 25),
            pokeDetailsTypeBox(TypeController(pokemon.type!.first.toString()))
          ])),
    );
  }

  Container pokeDetailsTypeBox(Color pokeTypeColor) {
    switch (pokeTypeColor) {
      case "Fire":
        pokeTypeColor = Colors.orange.shade600;
      case "Water" || "Ice":
        pokeTypeColor = Colors.blue.shade600;
      default:
    }

    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: pokeTypeColor,
          )),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Icon(Icons.fireplace, color: pokeTypeColor),
        textWidget("${pokemon.type!.first.toString()}", pokeTypeColor)
      ]),
    );
  }

  Color TypeController(String type) {
    Color colorType = Colors.black;
    switch (type) {
      case "Fire":
        return colorType = Colors.orange.shade600;
      case "Water" || "Ice":
        return colorType = Colors.blue.shade600;
      default:
        {
          return colorType;
        }
    }
  }
}
