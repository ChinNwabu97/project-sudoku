import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  
  final List<String> numberPadButtons = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
         'X'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Three columns for the number pad
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1 //Ensures the buttons will be square
              ),
              itemCount: numberPadButtons.length, 
              itemBuilder:(context, index) {
                return ElevatedButton(
                  onPressed: () {
                    String buttonText = numberPadButtons[index];
                    print('Button pressed: $buttonText');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0)
                  ), 
                  child: Text(
                    numberPadButtons[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }
            )
          )
        ],
      )
    );
  }
}