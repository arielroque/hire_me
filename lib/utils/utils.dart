import 'dart:math';
import 'dart:ui';

class Utils {
  static Color getRandomColor(List<Color> list, int index) {
    if (index < list.length) {
      return list[index];
    }
    return list[index % list.length];
  }
}
