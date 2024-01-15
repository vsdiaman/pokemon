import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Pokemon Details'),
          ),
      body: Container(
        width: double.infinity,
        height: 640,
        decoration: BoxDecoration(
          color: Color(0xff74cb48),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 29.3332519531,
              right: 24,
              child: Container(
                width: 306.67,
                height: 32,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 13.73, 0),
                      width: 20.93,
                      height: 20.53,
                      // child: Image.network(
                      //   'https://icons8.com.br/icon/7811/esquerda',
                      //   width: 30.93,
                      //   height: 30.53,
                      // ),
                    ),
                    Container(
                      // Name of Pokemon
                      margin: EdgeInsets.fromLTRB(0, 0, 112, 0),
                      child: Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          height: 1.3333333333,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // Number of Pokemon
                      '#$pokemonNum',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.3333333333,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 32.3000488281,
              top: 80,
              child: Container(
                width: 303.7,
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 31.92, 41.2, 0),
                      width: 6.5,
                      height: 11.42,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 32, 0),
                      width: 200,
                      height: 200,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 224,
              left: 4,
              right: 4,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 56, 20, 20),
                // width: 352,
                height: 412,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(99.5, 0, 99.5, 16),
                      width: double.infinity,
                      height: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // typechipsCYK (I1016:1461;1013:569)
                            margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                            width: 46,
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
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // typechipsFWb (I1016:1461;1013:567)
                            width: 51,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffa43e9e),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Poison',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      // about7Hu (I1016:1461;1013:574)
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Text(
                          'About',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            height: 1.1428571429,
                            color: Color(0xff74cb48),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // attributenew (I1016:1461;1013:634)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      padding: EdgeInsets.fromLTRB(24.67, 0, 23.17, 0),
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 24.67, 0),
                            width: 54,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  padding: EdgeInsets.fromLTRB(2.62, 0, 0, 0),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 0, 10.62, 0.33),
                                        width: 10.76,
                                        height: 12.33,
                                        child: Image.asset(
                                          'lib/assets/peso.png',
                                          width: 10.76,
                                          height: 12.33,
                                        ),
                                      ),
                                      Text(
                                        // kgyZ5 (I1016:1461;1013:638)
                                        pokemonWeight,
                                        style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                          height: 1.6,
                                          color: Color(0xff1c1c1c),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  // weightJbM (I1016:1461;1013:639)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                      'Weight',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xff666666),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dividerpZh (I1016:1461;1013:640)
                            margin: EdgeInsets.fromLTRB(0, 0, 26.17, 0),
                            width: 1,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 26.17, 0),
                            width: 51,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 12, 0),
                                        width: 8,
                                        height: 13.33,
                                        child: Image.asset(
                                          'lib/assets/height.png',
                                          width: 8,
                                          height: 13.33,
                                        ),
                                      ),
                                      Text(
                                        // m7SK (I1016:1461;1013:644)
                                        pokemonHeight,
                                        style: GoogleFonts.poppins(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w200,
                                          height: 1.6,
                                          color: Color(0xff1c1c1c),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  // heightreo (I1016:1461;1013:645)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                      'Height',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xff666666),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dividerM5m (I1016:1461;1013:646)
                            margin: EdgeInsets.fromLTRB(0, 0, 23.17, 0),
                            width: 1,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ability1ability2az7 (I1016:1461;1013:648)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  constraints: BoxConstraints(
                                    maxWidth: 57,
                                  ),
                                  child: Text(
                                    'Chlorophyll Overgrow',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                      height: 1.6,
                                      color: Color(0xff1c1c1c),
                                    ),
                                  ),
                                ),
                                Center(
                                  // moves6Bm (I1016:1461;1013:649)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                      'Moves',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xff666666),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 18, 30),
                      constraints: BoxConstraints(
                        maxWidth: 294,
                      ),
                      child: Text(
                        'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 1,
                          color: Color(0xff1c1c1c),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Text(
                          'Base Stats',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 1.1428571429,
                            color: Color(0xff74cb48),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // basestatsvLT (I1016:1461;1013:653)
                      width: double.infinity,
                      height: 96,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // labelT5V (I1016:1461;1013:654)
                            margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  // hpyZd (I1016:1461;1013:655)
                                  'HP',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                                Text(
                                  // atkuy5 (I1016:1461;1013:656)
                                  'ATK',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                                Text(
                                  // defFX9 (I1016:1461;1013:657)
                                  'DEF',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                                Text(
                                  // satkBvb (I1016:1461;1013:658)
                                  'SATK',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                                Text(
                                  // sdef8aw (I1016:1461;1013:659)
                                  'SDEF',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                                Text(
                                  // spdGx3 (I1016:1461;1013:660)
                                  'SPD',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6,
                                    color: Color(0xff74cb48),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dividerbzK (I1016:1461;1013:661)
                            margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                            width: 1,
                            height: 96,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                          Container(
                            // data8DZ (I1016:1461;1013:662)
                            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  // r9Z (I1016:1461;1013:663)
                                  '045',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                                Text(
                                  // PfH (I1016:1461;1013:664)
                                  '049',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                                Text(
                                  // 98f (I1016:1461;1013:665)
                                  '049',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                                Text(
                                  // VCX (I1016:1461;1013:666)
                                  '065',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                                Text(
                                  // q1V (I1016:1461;1013:667)
                                  '065',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                                Text(
                                  // ydV (I1016:1461;1013:668)
                                  '045',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // chartXf1 (I1016:1461;1013:669)
                            padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                            width: 233,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // chart1SX5 (I1016:1461;1013:670)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valuezoV (I1016:1461;1013:671)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retanglewTq (I1016:1461;1013:672)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 45,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // backgrounde7M (I1016:1461;1013:673)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
                                  height: 12,
                                ),
                                Container(
                                  // chart2XB9 (I1016:1461;1013:674)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valuet1h (I1016:1461;1013:675)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retangleE5Z (I1016:1461;1013:676)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 49,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // backgroundvyy (I1016:1461;1013:677)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
                                  height: 12,
                                ),
                                Container(
                                  // chart3qLF (I1016:1461;1013:678)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valuePsZ (I1016:1461;1013:679)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retangle9rj (I1016:1461;1013:680)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 49,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // backgroundfq5 (I1016:1461;1013:681)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
                                  height: 12,
                                ),
                                Container(
                                  // chart4Mxo (I1016:1461;1013:682)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valueXMV (I1016:1461;1013:683)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retangleH5m (I1016:1461;1013:684)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 65,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // backgroundnoD (I1016:1461;1013:685)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
                                  height: 12,
                                ),
                                Container(
                                  // chart5VxX (I1016:1461;1013:686)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valueeqR (I1016:1461;1013:687)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retanglenwd (I1016:1461;1013:688)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 65,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // backgroundv2F (I1016:1461;1013:689)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
                                  height: 12,
                                ),
                                Container(
                                  // chart6cfm (I1016:1461;1013:690)
                                  width: double.infinity,
                                  height: 4,
                                  child: Container(
                                    // valueBTy (I1016:1461;1013:691)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // retanglewCF (I1016:1461;1013:692)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 45,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xff74cb48),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // background41y (I1016:1461;1013:693)
                                          left: 0,
                                          top: 0,
                                          child: Align(
                                            child: SizedBox(
                                              width: 233,
                                              height: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Color(0x3374cb48),
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
              // pokeballNYT (I1016:1461;1013:703)
              left: 200,
              top: 8,
              child: Align(
                child: SizedBox(
                  width: 205.89,
                  height: 208,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image.asset(
                      'lib/assets/pokeballfby.png',
                      width: 205.89,
                      height: 208,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
