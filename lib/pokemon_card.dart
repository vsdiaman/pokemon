import 'package:flutter/material.dart';
import 'pokemon_details.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PokemonDetails(
                  name: name,
                  imageUrl: imageUrl,
                  pokemonNum: pokemonNum,
                  pokemonWeight: pokemonWeight,
                  pokemonHeight: pokemonHeight,
                  pokemonType: pokemonType,
                ),
              ),
            );
          },
          child: SizedBox(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
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
                                                      : pokemonType[0] ==
                                                              'Ghost'
                                                          ? Colors.deepPurple
                                                          : pokemonType[0] ==
                                                                  'Normal'
                                                              ? Colors.black26
                                                              : pokemonType[
                                                                          0] ==
                                                                      'Poison'
                                                                  ? Colors
                                                                      .deepPurpleAccent
                                                                  : Colors.lime,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.3), // Cor da borda
                      width: 1.0, // Largura da borda
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Número do Pokémon
                        Container(
                          width: 46,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 238, 233),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Center(
                            child: Text(
                              '#$pokemonNum',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                height: 1.3333333333,
                                color: Color.fromARGB(171, 1, 128, 128),
                              ),
                            ),
                          ),
                        ), //colocar o } aqui

                        Expanded(
                          // alignment: Alignment.bottomLeft,
                          child: Center(
                            child: Container(
                              height: 100,
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

                        Container(
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  child: Text(
                                    name,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'VT323',
                                      height: 1.3333333333,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ),
                              // Container(
                              //   margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                              //   width: 46,
                              //   // height: double.infinity,
                              //   decoration: BoxDecoration(
                              //     color: pokemonType[0] == 'Grass'
                              //         ? Colors.greenAccent
                              //         : pokemonType[0] == 'Fire'
                              //             ? Colors.redAccent
                              //             : pokemonType[0] == 'Water'
                              //                 ? Colors.blue
                              //                 : pokemonType[0] == 'Electric'
                              //                     ? Colors.yellow
                              //                     : pokemonType[0] == 'Rock'
                              //                         ? Colors.grey
                              //                         : pokemonType[0] ==
                              //                                 'Ground'
                              //                             ? Colors.brown
                              //                             : pokemonType[0] ==
                              //                                     'Psychic'
                              //                                 ? Colors.indigo
                              //                                 : pokemonType[
                              //                                             0] ==
                              //                                         'Fighting'
                              //                                     ? Colors
                              //                                         .orange
                              //                                     : pokemonType[
                              //                                                 0] ==
                              //                                             'Bug'
                              //                                         ? Colors
                              //                                             .lightGreenAccent
                              //                                         : pokemonType[0] ==
                              //                                                 'Ghost'
                              //                                             ? Colors
                              //                                                 .deepPurple
                              //                                             : pokemonType[0] == 'Normal'
                              //                                                 ? Colors.black26
                              //                                                 : pokemonType[0] == 'Poison'
                              //                                                     ? Colors.deepPurple
                              //                                                     : Colors.lime,
                              //     borderRadius: BorderRadius.circular(15),
                              //   ),
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(8.0),
                              //     child: Center(
                              //       child: Text(
                              //         pokemonType[0],
                              //         style: const TextStyle(
                              //             fontSize: 10,
                              //             color: Color.fromARGB(255, 8, 8, 8)),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
