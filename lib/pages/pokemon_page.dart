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
      backgroundColor: Color(0xFF181d1e),
      body: Container(
          margin: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(
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
            pokeDetailsTypeBox(pokemon.type!.first.toString()),
            const SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              textWidget(pokemon.height.toString(), Colors.white),
              textWidget(pokemon.weight.toString(), Colors.white),
            ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text("Height",
                  style: GoogleFonts.lato(fontWeight: FontWeight.w400)),
              Text("Weight",
                  style: GoogleFonts.lato(fontWeight: FontWeight.w400))
            ]),
            const SizedBox(height: 20),
            textWidget("Weakness", Colors.white),
            Expanded(
              child: ListView.builder(
                scrollDirection: flipAxis(Axis.vertical),
                itemCount: pokemon.weaknesses!.length,
                itemBuilder: (context, index) {
                  return pokeWeaknessTypeBox(pokemon.weaknesses![index]);
                },
              ),
            )
          ])),
    );
  }

  Container pokeDetailsTypeBox(String type) {
    Color colorType = Colors.black;
    IconData iconType = Icons.ac_unit_rounded;
    switch (type) {
      case "Fire":
        colorType = Colors.orange.shade600;
        iconType = Icons.fireplace_outlined;

      case "Bug":
        colorType = Colors.deepPurple.shade600;
        iconType = Icons.bug_report;
      case "Electric":
        colorType = Colors.yellow.shade600;
        iconType = Icons.electric_bolt;
      case "Normal":
        colorType = Colors.brown.shade600;
        iconType = Icons.catching_pokemon_outlined;
      case "Poison" || "Psychic":
        colorType = Colors.purple.shade600;
        iconType = Icons.batch_prediction_outlined;
      case "Ground" || "Fighting" || "Rock":
        colorType = Colors.grey.shade600;
        iconType = Icons.catching_pokemon;
      case "Dragon":
        colorType = Colors.blue.shade600;
        iconType = Icons.catching_pokemon;
      case "Grass":
        colorType = Colors.green.shade600;
        iconType = Icons.grass;
      case "Ice":
        colorType = Colors.blue.shade600;
        iconType = Icons.ac_unit_rounded;
      case "Ghost":
        colorType = Colors.deepPurple.shade600;
        iconType = Icons.girl_sharp;
      case "Water":
        colorType = Colors.blue.shade600;
        iconType = Icons.water_drop;

      default:
        {
          colorType;
          iconType;
        }
    }

    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: colorType,
          )),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Icon(iconType, color: colorType),
        textWidget(pokemon.type!.first.toString(), colorType)
      ]),
    );
  }

  Center pokeWeaknessTypeBox(String type) {
    Color colorType = Colors.black;
    IconData iconType = Icons.dark_mode;
    switch (type) {
      case "Fire":
        colorType = Colors.orange.shade600;
        iconType = Icons.fireplace_outlined;

      case "Bug":
        colorType = Colors.deepPurple.shade600;
        iconType = Icons.bug_report;
      case "Electric":
        colorType = Colors.yellow.shade600;
        iconType = Icons.electric_bolt;
      case "Normal":
        colorType = Colors.brown.shade600;
        iconType = Icons.catching_pokemon_outlined;
      case "Poison" || "Psychic":
        colorType = Colors.purple.shade600;
        iconType = Icons.batch_prediction_outlined;
      case "Ground" || "Fighting" || "Rock":
        colorType = Colors.grey.shade600;
        iconType = Icons.catching_pokemon;
      case "Dragon":
        colorType = Colors.blue.shade600;
        iconType = Icons.catching_pokemon;
      case "Grass":
        colorType = Colors.green.shade600;
        iconType = Icons.grass;
      case "Ice":
        colorType = Colors.blue.shade600;
        iconType = Icons.ac_unit_rounded;
      case "Ghost":
        colorType = Colors.deepPurple.shade600;
        iconType = Icons.girl_sharp;
      case "Water":
        colorType = Colors.blue.shade600;
        iconType = Icons.water_drop;

      default:
        {
          colorType;
          iconType;
        }
    }

    return Center(
      child: Container(
        width: 100,
        height: 50,
        margin: const EdgeInsets.only(left: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: colorType,
            )),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Icon(iconType, color: colorType),
          textWidget(type, colorType)
        ]),
      ),
    );
  }
}
