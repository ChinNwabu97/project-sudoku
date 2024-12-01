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
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Grid()),
              const SizedBox(width: 20,),
              Flexible(
                child: Container(
                  height: 500,
                  width: 500,
                  color: Colors.blue
                ),
              )
            ],
          )),
    );
  }
}
