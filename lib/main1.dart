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
    // final items = List.generate(100, (i) => i).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body:
        CircleAvatar(
          // child: Icon(Icons.person)
          backgroundImage: NetworkImage('http://bit.ly/2Pvz4t8')
        )

        // CircularProgressIndicator()
       // LinearProgressIndicator()


        // Icon(
        //   Icons.home,
        //   color: Colors.red,
        //   size: 60.0
        // )


      /*
        1. pubsec.yaml에 추가필요
            flutter:
              assets:
                - assets/
         2. flutter pub get 명령어 실행
       */
       // Image.asset('assets/pancho.jpg')


        // Image.network('http://bit.ly/2Pvz4t8')


        // Text(
        //   'Hello World',
        //   style: TextStyle(
        //     fontSize: 40.0,
        //     fontStyle: FontStyle.italic,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.red,
        //     letterSpacing: 4.0
        //   )
        // )


        // FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        // )

        // IconButton(
        //   icon: Icon(Icons.add),
        //   color: Colors.red,
        //   iconSize: 100.0,
        //   onPressed: () {}
        // )


        // TextButton(
        //   child: Text('TextButton'),
        //   onPressed: () {},
        // )

        // Center(
        //   child: Card(
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(16.0),
        //     ),
        //     elevation: 4.0,
        //     child: Container(
        //       width: 200,
        //       height: 200
        //     ),
        //   )
        // )


        // SizedBox(
        //   width: 100,
        //   height: 100,
        //   child: Container(
        //     color: Colors.red
        //   )
        // )


        // Column(
        //   children: <Widget>[
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.red,
        //       )
        //     ),
        //     Expanded(
        //         child: Container(
        //           color: Colors.green,
        //         )
        //     ),
        //     Expanded(
        //         child: Container(
        //           color: Colors.blue,
        //         )
        //     )
        //   ],
        // )


        // Align(
        //     alignment: Alignment.bottomRight,
        //     child: Container(
        //       color: Colors.red,
        //       width: 100,
        //       height: 100
        //     )
        // )


        // Padding(
        //   padding: const EdgeInsets.all(40.0),
        //   child: Container(
        //     color: Colors.red,
        //   )
        // )


        // Center(
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     height: 100
        //   )
        // )


        // PageView(
        //   children: <Widget>[
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //         color: Colors.yellow
        //     ),
        //     Container(
        //         color: Colors.blue
        //     ),
        //   ],
        // )


        // GridView.count(
        //   crossAxisCount: 2,
        //   children: <Widget>[
        //   Container(
        //         color: Colors.red,
        //         width: 100,
        //         height: 100,
        //         padding: const EdgeInsets.all(8.0),
        //         margin: const EdgeInsets.all(8.0),
        //     ),
        //     Container(
        //       color: Colors.green,
        //       width: 100,
        //       height: 100,
        //       padding: const EdgeInsets.all(8.0),
        //       margin: const EdgeInsets.all(8.0),
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       width: 100,
        //       height: 100,
        //       padding: const EdgeInsets.all(8.0),
        //       margin: const EdgeInsets.all(8.0),
        //     ),
        //   ],
        // )


        // ListView(
        //   scrollDirection: Axis.vertical,
        //   children: <Widget>[
        //     ListTile(
        //       leading: Icon(Icons.home),
        //       title: Text('Home'),
        //       trailing: Icon(Icons.navigate_next),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.event),
        //       title: Text('Event'),
        //       trailing: Icon(Icons.navigate_next),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.camera),
        //       title: Text('Camera'),
        //       trailing: Icon(Icons.navigate_next),
        //       onTap: () {},
        //     ),
        //   ]
        // )

          // SingleChildScrollView(
          //   child: ListBody(
          //     children: items.map((i) => Text('$i')).toList(),
          //   )
          // )


      //  Container(
      //   color: Colors.red,
      //   width: 100,
      //   height: 100,
      //   padding: const EdgeInsets.all(8.0),
      //   margin: const EdgeInsets.all(8.0),
      // )


      // Column(
      //   children: <Widget>[
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //   ),
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //   ],
      // )


      // Row(
      //   mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //   ],
      // )


      // Stack(
      //   children: <Widget>[
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 100,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 80,
      //       height: 80,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 60,
      //       height: 60,
      //       padding: const EdgeInsets.all(8.0),
      //       margin: const EdgeInsets.all(8.0),
      //     ),
      //   ],
      // )
    );
  }
}


