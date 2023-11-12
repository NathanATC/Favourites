import 'dart:collection';
import 'dart:math';
import 'package:favourites_app/shared/text.dart';

class Utility {
  static int calculateIq(String? name) {
    switch (name) {
      case "Khadar":
        return -1;
      case "khadar":
        return -100;
      default:
        return Random().nextInt(100);
    }
  }

  static String explainFavColor(String c) {
    int index;
    index = colors.indexOf(c);
    return colorExplanations[index];
  }

  static String explainFavAnimal(String c) {
    int index;
    index = animals.indexOf(c);
    return animalExplanations[index];
  }

  static String explainFavWater(String c) {
    int index;
    index = wata.indexOf(c);
    return wataExplanations[index];
  }
}
