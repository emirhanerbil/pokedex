import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/Pokemon.dart';

class PokedexApi {
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<Pokedex>> getCharsData() async {
    List<Pokedex> _list = [];

    var result = await Dio().get(_url);

    var poke = jsonDecode(result.data)["pokemon"];

    if (poke is List) {
      _list = poke.map((e) => Pokedex.fromJson(e)).toList();
    } else {
      return [];
    }

    return _list;
  }
}
