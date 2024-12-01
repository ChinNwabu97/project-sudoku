import 'package:flutter/material.dart';
import 'grid.dart';

// This is the file for the home page.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sudoku!!'),
        backgroundColor: Colors.blue,
      ),
      body: Grid(),
    );
  }
}

