import 'package:flutter/material.dart';
class Quizapp extends StatefulWidget {
  const Quizapp({super.key});

  @override
  State<Quizapp> createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> {
  String? lionIs = 'carnivore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [Text("Select correct answers from below:"),
            Container(
              child: Column(
                children: [Text("Lion is:"),
                 Row (
                   children: [ 
                   Radio<String>(
                    value: 'carnivore',
                    groupValue: lionIs,
                    onChanged: (value){
                      setState((){
                        lionIs = value;
                      });
                    },
                  ),
                  Text('Carnivore')
                ])
                ],
              ),
            )
          ]
      ),
    );
  }
}
