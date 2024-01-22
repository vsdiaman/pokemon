import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pokemon_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PokemonPage(),
    );
  }
}

class PokemonDetails extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String pokemonNum;
  final String pokemonWeight;
  final String pokemonHeight;
  final List<String> pokemonType;

  const PokemonDetails({
    required this.name,
    required this.imageUrl,
    required this.pokemonNum,
    required this.pokemonWeight,
    required this.pokemonHeight,
    required this.pokemonType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '#POKEMONS',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto-Black',
            height: 1.3333333333,
            color: Color.fromARGB(255, 80, 79, 79),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 72, 203, 203),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 4 * fem,
              top: 224 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 56 * fem, 20 * fem, 20 * fem),
                width: 352 * fem,
                height: 412 * fem,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          99.5 * fem, 0 * fem, 99.5 * fem, 16 * fem),
                      width: double.infinity,
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 16 * fem, 0 * fem),
                            width: 46 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
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
                                                      : pokemonType[0] ==
                                                              'Psychic'
                                                          ? Colors.indigo
                                                          : pokemonType[0] ==
                                                                  'Fighting'
                                                              ? Colors.orange
                                                              : pokemonType[
                                                                          0] ==
                                                                      'Bug'
                                                                  ? Colors
                                                                      .lightGreenAccent
                                                                  : pokemonType[
                                                                              0] ==
                                                                          'Ghost'
                                                                      ? Colors
                                                                          .deepPurple
                                                                      : pokemonType[0] ==
                                                                              'Normal'
                                                                          ? Colors
                                                                              .black26
                                                                          : pokemonType[0] == 'Poison'
                                                                              ? Colors.deepPurple
                                                                              : Colors.lime,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                pokemonType[0],
                                style: GoogleFonts.poppins(
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 51 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: pokemonType.length > 1
                                  ? (pokemonType[1] == 'Grass'
                                      ? Colors.greenAccent
                                      : pokemonType[1] == 'Fire'
                                          ? Colors.redAccent
                                          : pokemonType[1] == 'Flying'
                                              ? const Color.fromARGB(
                                                  255, 255, 82, 246)
                                              : pokemonType[1] == 'Water'
                                                  ? Colors.blue
                                                  : pokemonType[1] == 'Electric'
                                                      ? Colors.yellow
                                                      : pokemonType[1] == 'Rock'
                                                          ? Colors.grey
                                                          : pokemonType[1] ==
                                                                  'Ground'
                                                              ? Colors.brown
                                                              : pokemonType[
                                                                          1] ==
                                                                      'Psychic'
                                                                  ? Colors
                                                                      .indigo
                                                                  : pokemonType[
                                                                              1] ==
                                                                          'Fighting'
                                                                      ? Colors
                                                                          .orange
                                                                      : pokemonType[1] ==
                                                                              'Bug'
                                                                          ? Colors
                                                                              .lightGreenAccent
                                                                          : pokemonType[1] == 'Ghost'
                                                                              ? Colors.deepPurple
                                                                              : pokemonType[1] == 'Normal'
                                                                                  ? Colors.black26
                                                                                  : pokemonType[1] == 'Poison'
                                                                                      ? Colors.deepPurple
                                                                                      : Color.fromARGB(255, 12, 12, 12))
                                  : Color.fromARGB(255, 12, 12, 12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                pokemonType.length > 1
                                    ? pokemonType[1]
                                    : 'None',
                                style: GoogleFonts.poppins(
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'About',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1428571429 * ffem / fem,
                            color: Color.fromARGB(255, 139, 141, 139),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(35 * fem, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(right: 10.62 * fem),
                                        width: 10.76 * fem,
                                        height: 12.33 * fem,
                                        child: Image.asset(
                                          'lib/assets/screens/images/weight-t4K.png',
                                          width: 10.76 * fem,
                                          height: 12.33 * fem,
                                        ),
                                      ),
                                      Text(
                                        pokemonWeight,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.6 * ffem / fem,
                                          color: Color(0xff1c1c1c),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Weight',
                                    style: GoogleFonts.poppins(
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff666666),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1 * fem,
                            height: 48 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(35 * fem, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(right: 10.62 * fem),
                                        width: 10.76 * fem,
                                        height: 12.33 * fem,
                                        child: Image.asset(
                                          'lib/assets/screens/images/straighten-zJo.png',
                                          width: 10.76 * fem,
                                          height: 12.33 * fem,
                                        ),
                                      ),
                                      Text(
                                        pokemonHeight,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.6 * ffem / fem,
                                          color: Color(0xff1c1c1c),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Height',
                                    style: GoogleFonts.poppins(
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff666666),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 18 * fem, 30 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 294 * fem,
                      ),
                      child: Text(
                        'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.',
                        style: GoogleFonts.poppins(
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.6 * ffem / fem,
                          color: Color(0xff1c1c1c),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'Base Stats',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1428571429 * ffem / fem,
                            color: Color.fromARGB(255, 139, 141, 139),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 96 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 12 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'HP',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  'ATK',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  'DEF',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  // satkUt3 (I1016:1461;1013:658)
                                  'SATK',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  'SDEF',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  'SPD',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 12 * fem, 0 * fem),
                            width: 1 * fem,
                            height: 96 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 8 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '045',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  '049',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  '049',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  '065',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  '065',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                                Text(
                                  '045',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6 * ffem / fem,
                                    color: Color.fromARGB(255, 139, 141, 139),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 6 * fem, 0 * fem, 6 * fem),
                            width: 220 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 45 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12 * fem,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 49 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12 * fem,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 49 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12 * fem,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 65 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12 * fem,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 65 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12 * fem,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 4 * fem,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 45 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 231, 11, 11),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233 * fem,
                                              height: 4 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4 * fem),
                                                  color: Color.fromARGB(
                                                      51, 123, 124, 123),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 145.0532226562 * fem,
              top: 8 * fem,
              child: Align(
                child: SizedBox(
                  width: 205.89 * fem,
                  height: 208 * fem,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                      'lib/assets/screens/images/pokeball-fby.png',
                      width: 205.89 * fem,
                      height: 208 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 32.3000488281 * fem,
              top: 80 * fem,
              child: Container(
                width: 303.7 * fem,
                height: 200 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // Seta para esquerda
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 31.92 * fem, 41.2 * fem, 0 * fem),
                      width: 22 * fem,
                      height: 22 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          child: Image.asset(
                            'lib/assets/components/images/chevronleft-xJf.png',
                            width: 6.5 * fem,
                            height: 11.42 * fem,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 32 * fem, 0 * fem),
                        width: 160 * fem,
                        height: 150 * fem,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // Seta para direita
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 32 * fem, 0 * fem, 0 * fem),
                      width: 22 * fem,
                      height: 22 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 24 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'lib/assets/screens/images/chevronright-675.png',
                            width: 24 * fem,
                            height: 24 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  left: 29.3332519531 * fem,
                  top: 24 * fem,
                  child: Container(
                    width: 326.67 * fem,
                    height: 32 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 24 * ffem,
                              fontFamily: 'VT323',
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 46 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 238, 233),
                            borderRadius: BorderRadius.circular(22 * fem),
                          ),
                          child: Center(
                            child: Text(
                              '#$pokemonNum',
                              style: GoogleFonts.poppins(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3333333333 * ffem / fem,
                                color: Color.fromARGB(171, 1, 128, 128),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
