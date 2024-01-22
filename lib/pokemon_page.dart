import 'package:flutter/material.dart';
import '../data/data.dart';
import './pokemon_card.dart';
import './pokemon_search.dart';

class PokemonPage extends StatefulWidget {
  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  final PokedexApi _pokedexApi = PokedexApi();
  int displayedPokemonCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 231, 11, 11),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Image.asset(
                'lib/assets/screens/images/Pokédex_logo.png',
                width: 150,
                height: 100,
              ),
            ),
          ),
        ),
        actions: [
          SearchBarApp(),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: _pokedexApi.getPokemonList(),
              builder: (context, snapshot) {
                try {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError || snapshot.data == null) {
                    return const Center(
                      child: Text('Erro ao carregar os dados dos Pokémon'),
                    );
                  } else {
                    List<Map<String, dynamic>> pokemonList = snapshot.data!;

                    List<Map<String, dynamic>> displayedPokemon =
                        pokemonList.take(displayedPokemonCount).toList();

                    return Column(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: displayedPokemon.length,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> pokemon =
                                  displayedPokemon[index];
                              return PokemonCard(
                                name: pokemon['name'] ?? '',
                                imageUrl: pokemon['img'] ?? '',
                                pokemonNum: pokemon['num'] ?? '',
                                pokemonWeight: pokemon['weight'] ?? '',
                                pokemonHeight: pokemon['height'] ?? '',
                                pokemonType: pokemon['type'] ?? [],
                              );
                            },
                          ),
                        ),
                        if (displayedPokemonCount < pokemonList.length)
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                displayedPokemonCount += 6;
                              });
                            },
                            child: Text('Load More'),
                          ),
                      ],
                    );
                  }
                } catch (error) {
                  return Center(child: Text('Erro inesperado: $error'));
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
