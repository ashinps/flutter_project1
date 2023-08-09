import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar>
  with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabbar example'),
            bottom: TabBar(
                controller: _tabController,
                tabs:[
                  Tab(child: Text('Tab1')),
                  Tab(child: Text('Tab2')),
                  Tab(child: Text('Tab3'))
                ]
            ),
          ),
          body: TabBarView(
              controller: _tabController,
              children:[
                Text('this is tab1'),
                Text('this is tab2'),
                Text('this is tab3')
              ]
          ),
        )
    );
  }
}
