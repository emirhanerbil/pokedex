import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/Pokemon.dart';
import 'package:pokedex/pages/home_page.dart';
import 'package:pokedex/pages/pokemon_page.dart';
import 'package:pokedex/services/pokedex_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    PokedexApi.getCharsData();
    return MaterialApp(
      routes: {
        "/HomePage": (context) => const HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/PokemonPage') {
          final Pokedex pokemon = settings.arguments as Pokedex;
          return CupertinoPageRoute(
            builder: (context) {
              return PokemonPage(pokemon: pokemon);
            },
          );
        }
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
