import 'package:flutter/material.dart';

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

  PokemonCard(
      {required this.name,
      required this.imageUrl,
      required this.pokemonNum,
      required this.pokemonWeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
