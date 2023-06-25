import 'package:flutter/material.dart';
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
      appBar: AppBar(),
      body: FutureBuilder(
        future: PokedexApi.getCharsData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Hata: ${snapshot.error}');
          } else {
            List<Pokedex> _liste = snapshot.data!;
            return ListView.builder(
              itemCount: _liste.length,
              itemBuilder: (context, index) {
                return ListTile(leading: Text(_liste[index].name.toString()));
              },
            );
          }
        },
      ),
    );
  }
}
