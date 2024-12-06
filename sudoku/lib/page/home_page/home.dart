import 'package:flutter/material.dart';
import 'package:sudoku/page/home_page/number_pad.dart';
import 'grid_structure.dart';

// This is the file for the home page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: const Center(
          child: const Text('Sudoku', 
            style: TextStyle(
              fontSize: 40,
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ), 
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Grid()),
              const SizedBox(width: 20,),
              SizedBox( // Sized box to control the amount of space the number pad takes
                height: 700,
                width: 300,
                child: NumberPad(),
              ),
            ],
          )
      ),
    );
  }
}
