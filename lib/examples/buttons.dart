import 'package:flutter/material.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {

  bool _checked1=true;
  bool _checked2=false;
  bool _checked3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(value: _checked1, onChanged: (value) {
                setState(() {_checked1=!_checked1;});
              },),Text("Flutter"),
            ],
          ),
          Checkbox(value: _checked2,
            activeColor: Colors.yellowAccent,
            autofocus: true,
            checkColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                _checked2=!_checked2;
              });
            },),
          CheckboxListTile(
            subtitle: Text("Full Stack Course"),
            title:Text("Java"),
            value: _checked3, onChanged: (value) {
            setState(() {
              _checked3=!_checked3;
            });
          },)
          ,ElevatedButton(onPressed: () {print("gdfjhgdhfg");},
              child: Text("Login")),
          OutlinedButton(onPressed: () {}, child: Text("Sign Up")),
          TextButton(onPressed: () {}, child: Text("No account? Create One")),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(
            Icons.add
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}