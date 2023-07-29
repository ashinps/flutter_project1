import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleCalculator'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(23.0),
              child: TextFormField(
                controller: num1,
                decoration: InputDecoration(labelText: 'Number 1'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(23.0),
              child: TextFormField(
                controller: num2,
                decoration: InputDecoration(labelText: 'Number 2'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(){
                  int x = int.parse(num1.text);
                  int y = int.parse(num2.text);
                  setState(() {
                    result = x+y;
                  });
                }, child: const Text('+')),


                const SizedBox(width: 20,),
                ElevatedButton(onPressed:(){
                  int x = int.parse(num1.text);
                  int y = int.parse(num2.text);
                  setState(() {
                    result = x-y;
                  });
                }, child: const Text('-')),


                const SizedBox(width: 20,),
                ElevatedButton(onPressed:(){
                  int x = int.parse(num1.text);
                  int y = int.parse(num2.text);
                  setState(() {
                    result = x*y;
                  });
                }, child: const Text('x')),


                const SizedBox(width: 20,),
                ElevatedButton(onPressed:(){
                  int x = int.parse(num1.text);
                  int y = int.parse(num2.text);
                  setState(() {
                    result = x ~/ y;
                  });
                }, child: const Text('/'))
              ],
            ),
            SizedBox(height: 20,),
            Text('Result: $result', style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
