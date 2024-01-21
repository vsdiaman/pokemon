class PokemonModel {
  final String id;
  final String name;
  final String img;
  final String pokemonNum;
  final String weight;
  final String height;
  final List<String> type;

  PokemonModel({
    required this.id,
    required this.pokemonNum,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
  });
}
