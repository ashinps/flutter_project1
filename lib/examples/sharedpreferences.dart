import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefExample extends StatefulWidget {
  const SharedPrefExample({super.key});

  @override
  State<SharedPrefExample> createState() => _SharedPrefExampleState();
}

class _SharedPrefExampleState extends State<SharedPrefExample> {
  int _counter = 0;

  @override
  void initState(){
    super.initState();
    _LoadCounter();
  }

  void _LoadCounter() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter')??0);
    });
  }

  void _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter=(prefs.getInt('counter')??0)+1;
      prefs.setInt('counter', _counter);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Shared preferences'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:',style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            Text('$_counter',style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
