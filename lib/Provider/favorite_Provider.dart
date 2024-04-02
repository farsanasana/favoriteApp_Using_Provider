import 'package:flutter/material.dart';

class FavoritreProvider extends ChangeNotifier {
  List<String> _word = [];
  List<String> get words => _word;

  void toggleFavorite(String word) {
    final isExit = _word.contains(word);
    if (isExit) {
      _word.remove(word);
    } else {
      _word.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExit = _word.contains(word);
    return isExit;
  }

  void clearFavorate() {
    _word = [];
    notifyListeners();
  }
}
