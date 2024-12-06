import 'package:flutter/material.dart';

class SudokuGrid extends StatelessWidget {
  final int gridSize;
  final Widget Function(int) itemBuilder;

  const SudokuGrid({
    super.key,
    required this.gridSize,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: gridSize / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: 1, // Equal height and width for the grid when set to 1
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return itemBuilder(index);
      },
    );
  }
}