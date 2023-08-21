import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Record extends StatefulWidget {
  const Record({super.key});

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  void initState(){
    readRecord();
  }
  List<int>ages=[];
  List<String>names=[];
  List<String>profileImages=[];

  bool isLoading = true;

  Future<void>readRecord() async{
    var dbUrl="https://flutterproject1-76fff-default-rtdb.firebaseio.com/"+"record.json";
    try{
      final response=await http.get(Uri.parse(dbUrl));
      final data=json.decode(response.body) as Map<String, dynamic>;
      if(data==null)
        {
          return;
        }
      data.forEach((key,value){
        ages.add(value['age']);
        profileImages.add(value['image']);
        names.add(value['name']);
      });
      setState((){
        isLoading=false;
      });
    }catch(e)
    {
      print('$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading?const CircularProgressIndicator():Center(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context,index){
              return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(profileImages[index])
                  ),
                title: Text(names[index]),
                subtitle: Text("Age ${ages[index].toString()}"),
              );
            }),
      ),
    );
  }
}
