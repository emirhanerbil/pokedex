import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/pages/PokemonPage.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/models/Pokemon.dart';

import '../components/poke_listview.dart';
import '../components/pokemon_box_shadow.dart';
import '../components/poketype_gradient.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   super.initState();

  //   _liste.shuffle();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        padding: EdgeInsets.only(top: 50),
        child: FutureBuilder(
          future: PokedexApi.getCharsData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Hata: ${snapshot.error}');
            } else {
              List<Pokedex> _liste = snapshot.data!;
              _liste.shuffle();
              return NoGlowListView(_liste);
            }
          },
        ),
      ),
    );
  }
}
