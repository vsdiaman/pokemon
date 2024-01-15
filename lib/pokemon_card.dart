import 'package:flutter/material.dart';
import 'pokemon_details.dart';

class PokemonList extends StatelessWidget {
  final List<Map<String, dynamic>> pokemonList;

  PokemonList({required this.pokemonList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: pokemonList.map((pokemon) {
          return PokemonCard(
            name: pokemon['name'] ?? '',
            imageUrl: pokemon['img'] ?? '',
            pokemonNum: pokemon['num'] ?? '',
            pokemonWeight: pokemon['weight'] ?? '',
            pokemonHeight: pokemon['height'] ?? '',
            pokemonType: pokemon['type'] ?? [],
          );
        }).toList(),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String pokemonNum;
  final String pokemonWeight;
  final String pokemonHeight;
  final List<String> pokemonType;

  PokemonCard({
    required this.name,
    required this.imageUrl,
    required this.pokemonNum,
    required this.pokemonWeight,
    required this.pokemonHeight,
    required this.pokemonType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navegar para a tela de detalhes quando o card for clicado
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PokemonDetails(
              name: name,
              imageUrl: imageUrl,
              pokemonNum: pokemonNum,
              pokemonWeight: pokemonWeight,
              pokemonHeight: pokemonHeight,
              pokemonType: pokemonType, // Passa a lista completa de tipos
            ),
          ),
        );
      },
      child: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: pokemonType[0] == 'Grass'
                  ? Colors.greenAccent
                  : pokemonType[0] == 'Fire'
                      ? Colors.redAccent
                      : pokemonType[0] == 'Water'
                          ? Colors.blue
                          : pokemonType[0] == 'Electric'
                              ? Colors.yellow
                              : pokemonType[0] == 'Rock'
                                  ? Colors.grey
                                  : pokemonType[0] == 'Ground'
                                      ? Colors.brown
                                      : pokemonType[0] == 'Psychic'
                                          ? Colors.indigo
                                          : pokemonType[0] == 'Fighting'
                                              ? Colors.orange
                                              : pokemonType[0] == 'Bug'
                                                  ? Colors.lightGreenAccent
                                                  : pokemonType[0] == 'Ghost'
                                                      ? Colors.deepPurple
                                                      : pokemonType[0] ==
                                                              'Normal'
                                                          ? Colors.black26
                                                          : pokemonType[0] ==
                                                                  'Poison'
                                                              ? Colors
                                                                  .deepPurpleAccent
                                                              : Colors.lime,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Número do Pokémon
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '#$pokemonNum',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ), //colocar o } aqui
                    // Imagem do Pokémon
                    Expanded(
                      // alignment: Alignment.bottomLeft,
                      child: Center(
                        child: Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Nome do Pokémon
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Peso do Pokémon
                    Text(
                      'Weight: $pokemonWeight',
                      style: const TextStyle(
                          fontSize: 8, color: Color.fromARGB(255, 8, 8, 8)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
