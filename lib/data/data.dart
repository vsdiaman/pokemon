import 'dart:convert';
import 'package:http/http.dart' as http;

class PokedexApi {
  final String apiUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  Future<List<Map<String, dynamic>>> getPokemonList() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['pokemon'];
      List<Map<String, dynamic>> pokemonList = [];

      for (var pokemon in data) {
        pokemonList.add({
          'name': pokemon['name'],
          'img': pokemon['img'],
          'num': pokemon['num'],
          'weight': pokemon['weight'],
          'height': pokemon['height'],
          'type': List<String>.from(pokemon['type']),
        });
      }

      return pokemonList;
    } else {
      throw Exception('Falha ao carregar os dados dos Pokémon');
    }
  }
}
