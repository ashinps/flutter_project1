import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class GridViewexample extends StatefulWidget {
  const GridViewexample({super.key});

  @override
  State<GridViewexample> createState() => _GridViewexampleState();

}

class _GridViewexampleState extends State<GridViewexample>
   with TickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(
            title: Text('hello'),
            bottom: TabBar(
              controller: _tabController,
             tabs: [
                Tab(text: 'Tab1'),
               Tab(text: 'Tab2'),
               Tab(text: 'Tab3'),
               Tab(text: 'Tab4'),
              ]
            )
        ), body: TabBarView(
            controller: _tabController,
            children: [
              GridView.count(
                padding: EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount:2,
                children:<Widget>[
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Text('grid1'),
                  ),
                  Container(
                    child: Text('grid2'),
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  Container(
                    child: Text('grid3'),
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Text('grid1'),
                  ),
                  Container(
                    child: Text('grid2'),
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  Container(
                    child: Text('grid3'),
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Text('grid1'),
                  ),
                  Container(
                    child: Text('grid2'),
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  Container(
                    child: Text('grid3'),
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Text('grid1'),
                  ),
                  Container(
                    child: Text('grid2'),
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  Container(
                    child: Text('grid3'),
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                ]

      ),
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
              Center(
                child: Text('sample text for Contacts Tab'),
              ),
              Center(
                child: Text('sample text for Contacts Tab'),
              ),
              Center(
                child: Text('sample text for Contacts Tab'),
              ),
            ],
          ),
        ),
    );
  }
}
