import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/components/pokemon_box_shadow.dart';
import 'package:pokedex/components/poketype_gradient.dart';

import '../models/Pokemon.dart';

NotificationListener<OverscrollIndicatorNotification> NoGlowListView(
    List<Pokedex> _liste) {
  return NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (OverscrollIndicatorNotification overscroll) {
      overscroll.disallowIndicator();
      return true;
    },
    child: PokeListView(_liste),
  );
}

ListView PokeListView(List<Pokedex> _liste) {
  return ListView.separated(
    separatorBuilder: (context, index) {
      return const SizedBox(height: 43);
    },
    itemCount: _liste.length,
    itemBuilder: (context, index) {
      _liste.shuffle();
      return Stack(children: [
        Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                boxShadow: [PokemonBoxShadow("water")],
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                gradient: pokeTypeGradient("water")),
            height: 150,
            alignment: Alignment.bottomRight,
            child: Container(
                width: 120,
                margin: const EdgeInsets.only(bottom: 20, right: 10),
                child: Text(
                  "#${_liste[index].num.toString()} \n${_liste[index].name.toString()}",
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ))),
        Container(
          child: Image.network(_liste[index].img.toString(),
              height: 180,
              alignment: Alignment.bottomLeft,
              width: 150,
              fit: BoxFit.contain),
        )
      ]);
    },
  );
}
