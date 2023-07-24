import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [Column(
            children: [
              Icon(
                Icons.star,color: Colors.red,size: 25,),
              Container(child: Text("Container 1"))
            ],
          ),
            Column(
              children: [
                Icon(
                  Icons.star,color: Colors.red,size: 25,),
                Container(child: Text("Container 2"))
              ],
            ),
            Column(
              children: [
                Icon(
                    Icons.star,color: Colors.red,size: 25,),
                Container(child: Text("Container 3"))
              ],
            )
          ]
        )
      )
    );
  }
}
