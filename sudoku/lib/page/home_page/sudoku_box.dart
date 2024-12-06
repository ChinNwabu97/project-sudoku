import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sudoku/providers/sudoku_grid_state.dart';

class SudokuBox extends StatelessWidget {
  final int index;

  SudokuBox({required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<SudokuGridState>(
      builder: (context, sudokuGridState, child) {
        final value = sudokuGridState.gridValues[index];

        return GestureDetector(
          onTap: () => _showNumberPad(context, sudokuGridState),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                value == null ? '' : value.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
    );
  }


  void _showNumberPad(BuildContext context, SudokuGridState sudokuGridState) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Choose a number"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(9, (index) {
              final number = index + 1;
              return GestureDetector(
                onTap: () {
                  sudokuGridState.updateBox(this.index, number);
                  Navigator.pop(context); // Close the dialog
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}