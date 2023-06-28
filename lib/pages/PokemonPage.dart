import 'package:flutter/material.dart';
import 'package:pokedex/models/Pokemon.dart';

class PokemonPage extends StatelessWidget {
  final Pokedex pokemon;
  const PokemonPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text(pokemon.name.toString())),
      ),
    );
  }
}
