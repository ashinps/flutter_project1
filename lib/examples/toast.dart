import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastExample extends StatefulWidget {
  const ToastExample({super.key});

  @override
  State<ToastExample> createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: ElevatedButton(
          onPressed: () {
            print("yes");
            Fluttertoast.showToast(
              msg: 'This is a toast message!',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          child: Text('Press The Button',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
