import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

class WriteDataExample extends StatefulWidget {
  const WriteDataExample({super.key});

  @override
  State<WriteDataExample> createState() => _WriteDataExampleState();
}

class _WriteDataExampleState extends State<WriteDataExample> {
  final _form = GlobalKey<FormState>();
  String?title,note;

  void writeData()async{
    _form.currentState?.save();
    var url = "https://flutterproject1-76fff-default-rtdb.firebaseio.com/"+"Data.json";

    try{
      final response = await http.post(
        Uri.parse(url),
        body: json.encode({"title":title,"note":note}),
      );
    } catch (error){
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Title"),
                onSaved: (value) {
                  title = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter note"),
                onSaved: (value){
                  note = value!;
                },
              ),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: writeData,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

