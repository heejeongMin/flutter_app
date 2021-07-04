import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 3,
       child: Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           items: [
             BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 label:'Home'),
             BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                  label: 'Profile'),
             BottomNavigationBarItem(
                 icon: Icon(Icons.notifications),
                 label: 'Notification')
           ],
         ),


         // appBar: AppBar(
         //   title:Text('Tab'),
         //   bottom: TabBar(
         //     tabs: <Widget>[
         //       Tab(icon: Icon(Icons.tag_faces)),
         //       Tab(text: '메뉴2'),
         //       Tab(icon: Icon(Icons.info), text: '메뉴3'),
         //     ],
         //   ),
         // ),
         // body: TabBarView(
         //   children: <Widget>[
         //     Container(color:Colors.yellow,),
         //     Container(color:Colors.orange),
         //     Container(color:Colors.red)
         //   ],
         // )

       )
    );
  }
}


