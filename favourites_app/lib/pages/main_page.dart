import 'dart:math';
import 'dart:ui';

import 'package:favourites_app/shared/images.dart';
import 'package:favourites_app/shared/styles.dart';
import 'package:favourites_app/shared/text.dart';
import 'package:flutter/material.dart';

import '../shared/utilities.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? val1;
  String? val2;
  String? val3;
  String? iqStr;

  List<DropdownMenuItem<String>> favColor = [];
  List<DropdownMenuItem<String>> favAnimal = [];
  List<DropdownMenuItem<String>> favWata = [];

  TextEditingController pp = TextEditingController();

  void generateItems() {
    for (String pp in colors) {
      favColor.add(DropdownMenuItem(
        value: pp,
        child: Text(
          pp,
          style: Styles.comic28ptfont,
        ),
      ));
    }
    for (String p2 in animals) {
      favAnimal.add(DropdownMenuItem(
        value: p2,
        child: Text(
          p2,
          style: Styles.comic28ptfont,
        ),
      ));
    }
    for (String p3 in wata) {
      favWata.add(DropdownMenuItem(
        value: p3,
        child: Text(
          p3,
          style: Styles.comic28ptfont,
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateItems();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(fish2Path),
          ),
        ),
        width: screenWidth,
        height: screenHeight,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: screenWidth * 0.5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Choose Favourite Color: "),
                        DropdownButton<String>(
                          items: favColor,
                          value: val1,
                          onChanged: (String? value) {
                            setState(() {
                              val1 = value;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Choose Favourite Animal: "),
                        DropdownButton<String>(
                          items: favAnimal,
                          value: val2,
                          onChanged: (String? value) {
                            setState(() {
                              val2 = value;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Choose Favourite Water: "),
                        SizedBox(
                          child: DropdownButton<String>(
                            items: favWata,
                            value: val3,
                            onChanged: (String? value) {
                              setState(() {
                                val3 = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            if (val1 == null || val2 == null || val3 == null) {
                              showDialog(
                                context: context,
                                builder: (context) => Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(fishPath),
                                      ),
                                    ),
                                    width: screenWidth * 0.5,
                                    height: screenHeight * 0.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Center(
                                          child: Text(
                                            "You forgot to select an option!",
                                            style: Styles.impact28ptColoredFont,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            shape: const StadiumBorder(),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            ">:(",
                                            style: Styles.impact28ptfont,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              int randomFont = Random().nextInt(3);
                              TextStyle fontStyle = const TextStyle();
                              switch (randomFont) {
                                case 0:
                                  fontStyle = Styles.comic28ptfont;
                                  break;
                                case 1:
                                  fontStyle = Styles.impact28ptfont;
                                  break;
                                case 2:
                                  fontStyle = Styles.roman28ptfont;
                                  break;
                              }
                              TextStyle fontStyle2 = const TextStyle();
                              switch (randomFont) {
                                case 0:
                                  fontStyle2 = Styles.comic28ptColoredFont;
                                  break;
                                case 1:
                                  fontStyle2 = Styles.impact28ptColoredFont;
                                  break;
                                case 2:
                                  fontStyle2 = Styles.roman28ptColoredFont;
                                  break;
                              }
                              showDialog(
                                context: context,
                                builder: (context) => Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(fishPath),
                                      ),
                                    ),
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.5,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Your favourite color, $val1, indicates that you are ",
                                            style: fontStyle,
                                          ),
                                          Text(
                                            Utility.explainFavColor(val1!),
                                            style: fontStyle2,
                                          ),
                                          Text(
                                            "Your favourite animal, the $val2, indicates that you are ",
                                            style: fontStyle,
                                          ),
                                          Text(
                                            Utility.explainFavAnimal(val2!),
                                            style: fontStyle2,
                                          ),
                                          Text(
                                            "Your favourite water, $val3, indicates that you are ",
                                            style: fontStyle,
                                          ),
                                          Text(
                                            Utility.explainFavWater(val3!),
                                            style: fontStyle2,
                                          ),
                                          const SizedBox(
                                            height: 32,
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: const StadiumBorder(),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Neat!",
                                              style: Styles.impact28ptfont,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text("Check Personality!"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.5,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Calculate your iq!"),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextField(
                        controller: pp,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Center(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(fishPath),
                                ),
                              ),
                              width: screenWidth * 0.3,
                              height: screenHeight * 0.3,
                              child: Center(
                                child: Text(
                                  "${pp.text}'s IQ is ${Utility.calculateIq(pp.text)}!",
                                  style: Styles.impact28ptColoredFont,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: const Text("Check!"),
                    )
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
