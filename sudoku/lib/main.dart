import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sudoku/providers/sudoku_grid_state.dart';
import 'page/home_page/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SudokuGridState(), // Provide the Sudoku grid state
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sudoku Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}

