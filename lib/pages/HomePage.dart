import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/models/Pokemon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              return ListViewPoke(_liste);
            }
          },
        ),
      ),
    );
  }

  ListView ListViewPoke(List<Pokedex> _liste) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(height: 60);
      },
      itemCount: _liste.length,
      itemBuilder: (context, index) {
        _liste.shuffle();
        return Stack(children: [
          Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  gradient: pokeTypeGradient("fire")),
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

  LinearGradient pokeTypeGradient(String pokeType) {
    if (pokeType == "grass") {
      return LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.green.shade900,
            Colors.green.shade500,
            Colors.green.shade300,
          ]);
    } else if (pokeType == "fire") {
      return LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.orange.shade900,
            Colors.orange.shade500,
            Colors.orange.shade300,
          ]);
    } else {
      return LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade500,
            Colors.blue.shade300,
          ]);
    }
  }

  ListTile BasicListTile(int index, List<Pokedex> _liste) {
    return ListTile(
        tileColor: index % 2 == 0 ? Colors.red : Colors.blue,
        title: Text(_liste[index].name.toString()),
        leading:
            CircleAvatar(child: Image.network(_liste[index].img.toString())));
  }
}
