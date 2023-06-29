import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/components/pokemon_box_shadow.dart';
import 'package:pokedex/components/poketype_gradient.dart';
import '../models/Pokemon.dart';

NotificationListener<OverscrollIndicatorNotification> noGlowListView(
    List<Pokedex> _liste) {
  return NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (OverscrollIndicatorNotification overscroll) {
      overscroll.disallowIndicator();
      return true;
    },
    child: pokeListView(_liste),
  );
}

ListView pokeListView(List<Pokedex> _liste) {
  return ListView.separated(
    separatorBuilder: (context, index) {
      return const SizedBox(height: 43);
    },
    itemCount: _liste.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/PokemonPage",
              arguments: _liste[index]);
        },
        child: Container(
          child: index % 2 == 0
              ? imageLeftTextRightCard(_liste, index)
              : imageRightTextLeftCard(_liste, index),
        ),
      );
    },
  );
}

Stack imageRightTextLeftCard(List<Pokedex> _liste, int index) {
  return Stack(children: [
    Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
            boxShadow: [pokemonBoxShadow(_liste[index].type!.first)],
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            gradient: pokeTypeGradient(_liste[index].type!.first)),
        height: 150,
        alignment: Alignment.bottomLeft,
        child: Container(
            width: 120,
            margin: const EdgeInsets.only(bottom: 20, left: 20),
            child: Text(
              "#${_liste[index].num.toString()} \n${_liste[index].name.toString()} \n${_liste[index].type!.first}",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
            ))),
    Container(
      alignment: Alignment.bottomRight,
      child: Image.network(_liste[index].img.toString(),
          height: 180,
          alignment: Alignment.bottomLeft,
          width: 150,
          fit: BoxFit.contain),
    )
  ]);
}

Stack imageLeftTextRightCard(List<Pokedex> _liste, int index) {
  return Stack(children: [
    Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
            boxShadow: [pokemonBoxShadow(_liste[index].type!.first)],
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            gradient: pokeTypeGradient(_liste[index].type!.first)),
        height: 150,
        alignment: Alignment.bottomRight,
        child: Container(
            width: 120,
            margin: const EdgeInsets.only(bottom: 20, right: 10),
            child: Text(
              "#${_liste[index].num.toString()} \n${_liste[index].name.toString()} \n${_liste[index].type!.first}",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
            ))),
    Container(
      child: Image.network(_liste[index].img.toString(),
          height: 180,
          alignment: Alignment.bottomLeft,
          width: 150,
          fit: BoxFit.contain),
    )
  ]);
}
