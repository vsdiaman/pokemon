import 'package:flutter/material.dart';
import '../data/data.dart';
import './pokemon_card.dart';

class PokemonPage extends StatelessWidget {
  final PokedexApi _pokedexApi = PokedexApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            color: Color.fromARGB(255, 231, 11, 11),
            borderRadius: BorderRadius.circular(
                10.0), // Ajuste o raio conforme necessário
          ),
          child: Center(
            child: Image.asset(
              'lib/assets/screens/images/Pokédex_logo.png',
              width: 150,
              height: 100,
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _pokedexApi.getPokemonList(),
        builder: (context, snapshot) {
          try {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError || snapshot.data == null) {
              return const Center(
                  child: Text('Erro ao carregar os dados dos Pokémon'));
            } else {
              List<Map<String, dynamic>> pokemonList = snapshot.data!;
              // Utilize um GridView.builder para construir cards para cada Pokémon
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Define o número de colunas na grade
                ),
                itemCount: pokemonList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> pokemon = pokemonList[index];
                  return PokemonCard(
                    name: pokemon['name'] ?? '',
                    imageUrl: pokemon['img'] ?? '',
                    pokemonNum: pokemon['num'] ?? '',
                    pokemonWeight: pokemon['weight'] ?? '',
                    pokemonHeight: pokemon['height'] ?? '',
                    pokemonType: pokemon['type'] ?? [],
                  );
                },
              );
            }
          } catch (error) {
            return Center(child: Text('Erro inesperado: $error'));
          }
        },
      ),
    );
  }
}
