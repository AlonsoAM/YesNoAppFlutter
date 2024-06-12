import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF2F00FF);
const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'colors must be between 0 and ${_colorThemes.length - 1} inclusive.');

  ThemeData get theme => ThemeData(
        colorSchemeSeed: _colorThemes[selectedColor],
      );
}
