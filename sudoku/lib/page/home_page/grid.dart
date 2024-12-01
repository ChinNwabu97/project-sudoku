import 'package:flutter/material.dart';
import 'package:sudoku/page/home_page/grid_in_grid.dart';

// This Widget creates the outer 3X3 Grid.
class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1
        )
      ),
      height: 1000,
      width: 1000,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000/3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1),
          itemCount: 9,
          itemBuilder: (context, i) {
            return GridInGrid();
          }),
    );
  }
}
