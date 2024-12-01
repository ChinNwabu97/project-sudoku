import 'package:flutter/material.dart';
import 'package:sudoku/page/home_page/sudoku_box.dart';

// This Widget creates the inner 3 x 3 Grid.
class GridInGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0
        ),
      ),
      height: 1000/3,
      width: 1000/3,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: (1000/3)/3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1),
          itemCount: 9,
          itemBuilder: (context, i) {
            return SudokuBox(index: i);
          }),
    );
  }
}

