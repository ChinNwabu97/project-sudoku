import 'package:flutter/material.dart';
import 'package:sudoku/page/home_page/sudoku_box.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 5),
      ),
      height: 800,
      width: 800,
      child: SudokuGrid(
        gridSize: 800,
        itemBuilder: (context, index) => GridInGrid(parentIndex: index),
      ),
    );
  }
}

class GridInGrid extends StatelessWidget {
  final int parentIndex;

  GridInGrid({required this.parentIndex});

  @override
  Widget build(BuildContext context) {
    // Calculate dimensions based on parent container size.

    double boxSize = 1000 / 3; // Adjust this as necessary.

    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: SudokuGrid(
        gridSize: boxSize,
        itemBuilder: (context, index) {
          final globalIndex = parentIndex * 9 + index;
          return SudokuBox(index: globalIndex); // Pass the global index
        },
      ),
    );
  }
}

class SudokuGrid extends StatelessWidget {
  final double gridSize;
  final IndexedWidgetBuilder itemBuilder;

  SudokuGrid({required this.gridSize, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Define the number of items per row
        childAspectRatio: 1, // Aspect ratio for each item (box)
      ),
      itemCount: 9, // 9 items for a 3x3 grid
      itemBuilder: itemBuilder,
    );
  }
}
