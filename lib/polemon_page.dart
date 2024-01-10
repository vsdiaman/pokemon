import 'package:flutter/material.dart';
import '../data/data.dart';
import './pokemon_card.dart'; // Importe o novo componente

class PokemonPage extends StatelessWidget {
  final PokedexApi _pokedexApi = PokedexApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Pokedex',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _pokedexApi.getFirstPokemon(),
        builder: (context, snapshot) {
          try {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError || snapshot.data == null) {
              return Text('Erro ao carregar os dados do Pokémon');
            } else {
              Map<String, dynamic> data = snapshot.data!;
              // Utilize o novo componente PokemonCard
              return PokemonCard(
                name: data['name'] ?? '',
                imageUrl: data['img'] ?? '',
              );
            }
          } catch (error) {
            return Text('Erro inesperado: $error');
          }
        },
      ),
    );
  }
}
