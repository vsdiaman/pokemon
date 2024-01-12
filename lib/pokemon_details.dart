import 'package:flutter/material.dart';

class PokemonDetails extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String pokemonNum;
  final String pokemonWeight;
  final String pokemonHeight;

  const PokemonDetails({
    required this.name,
    required this.imageUrl,
    required this.pokemonNum,
    required this.pokemonWeight,
    required this.pokemonHeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Details'),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '#$pokemonNum',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                imageUrl,
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                'Weight: $pokemonWeight',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Height: $pokemonHeight',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Adicione outras informações aqui conforme necessário
            ],
          ),
        ),
      ),
    );
  }
}
