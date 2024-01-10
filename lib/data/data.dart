import 'dart:convert';
import 'package:http/http.dart' as http;

class PokedexApi {
  final String apiUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  Future<Map<String, dynamic>> getFirstPokemon() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> decodedData = json.decode(response.body);
      List<dynamic> pokemonList = decodedData['pokemon'];

      if (pokemonList.isNotEmpty) {
        Map<String, dynamic> firstPokemon = pokemonList[11];
        return {
          'name': firstPokemon['name'],
          'img': firstPokemon['img'],
        };
      } else {
        throw Exception('A lista de Pokémon está vazia');
      }
    } else {
      throw Exception('Falha ao carregar os dados do Pokémon');
    }
  }
}
