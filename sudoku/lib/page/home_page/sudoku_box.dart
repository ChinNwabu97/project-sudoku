import 'package:flutter/material.dart';

// Sudoku Box is the file containing a single box for containing a number
class SudokuBox extends StatelessWidget {
  final int index;

  const SudokuBox({
    super.key,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    if (index == 0 ){
      return Container(
      height: 500,
      width: 500,
      color: Colors.white,
      child: Text(index.toString()),
    );
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1
        )
      ),
      height: 500,
      width: 500,
      child: Text(index.toString()),
    );
  }
}
