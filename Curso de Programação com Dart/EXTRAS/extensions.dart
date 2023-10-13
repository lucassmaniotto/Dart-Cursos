void main() {
  String name = 'lucas';
  print(Utils().toFirstLetterUpperCase(name));

  print(name.toFirstLetterUpperCase());

  print(Color.Red.toHex());
}

// ---------------------------------------------------- //

class Utils {
  toFirstLetterUpperCase(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }
}

extension StringExtension on String {
  toFirstLetterUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

// ---------------------------------------------------- //

enum Color { Red, Green, Blue }

extension ColorExtension on Color {
  toHex() {
    switch (this) {
      case Color.Red:
        return '#FF0000';
      case Color.Green:
        return '#00FF00';
      case Color.Blue:
        return '#0000FF';
    }
  }
}
