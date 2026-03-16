import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  bool darkMode = false;

  final Color daytimeColor = Colors.orange;
  final Color nighttimeColor = Colors.indigo;
  final Color dangerColor = Colors.redAccent;
  final Color grey = Colors.grey[600] ?? Colors.grey;

  Color seedColor = Colors.amber;

  void setColorFromTemperature(int temperature) {
    Color newColor;
    if (temperature > 80) {
      newColor = Colors.deepOrange;
    } else if (temperature > 50) {
      newColor = Colors.yellow.shade200;
    } else if (temperature > 32) {
      newColor = Colors.lightBlue;
    } else {
      newColor = Colors.blue.shade900;
    }
    if (newColor != seedColor) {
      seedColor = newColor;
      notifyListeners();
    }
  }

  void loadDarkModePrefs() async {
    final prefs = SharedPreferencesAsync();
    bool? mode = await prefs.getBool("darkMode");
    if (mode != null){
      setDarkMode(mode);
    }
    
    }

  void setDarkMode(bool mode) async {
    darkMode = mode;
    notifyListeners();
    final prefs = SharedPreferencesAsync();
    await prefs.setBool("darkMode", mode);
  }
}