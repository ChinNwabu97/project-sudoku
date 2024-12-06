import 'package:flutter/material.dart';

class SudokuGridState with ChangeNotifier {
  //A list to hold the values for the 9x9 grid (81 cells in total)
  List<int?> gridValues = List.generate(81, (index) => null);

  // Method to update a specific box value
  void updateBox(int index, int value) {
    gridValues[index] = value;
    notifyListeners(); // Notify all listeners that the value has changed
  }

  //Optionally you can create methods to clear the box or reset the grid
  void clearBox(int index) {
    gridValues[index] = null;
    notifyListeners();
  }
}
