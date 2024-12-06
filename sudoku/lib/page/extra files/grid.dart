import 'package:flutter/material.dart';
import 'package:sudoku/page/extra%20files/grid_in_grid.dart';

// This Widget creates the outer 3X3 Grid.
class Grid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 5
        ),
      ),
      height: 800,
      width: 800,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 800/3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1),
          itemCount: 9,
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: GridInGrid());
          }),
    );
  }
}
