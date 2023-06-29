import 'package:flutter/material.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/models/Pokemon.dart';
import '../components/poke_listview.dart';

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
      backgroundColor: Color(0xFF181d1e),
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        padding: const EdgeInsets.only(top: 50),
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
              return noGlowListView(_liste);
            }
          },
        ),
      ),
    );
  }
}
