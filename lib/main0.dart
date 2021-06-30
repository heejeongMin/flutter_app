import 'package:flutter/material.dart';

/*
위젯 사이의 데이터 전달은 생성자로 하고, 상태 클래스에서 statefulwidget에 접근하려면,
widget 프로퍼티 사용 .
 */
// 앱 시작 부분
void main() => runApp(MyApp());

//시작 클래스, 머티리얼 디자인앱 생성
//Stateless --> 상태를 가지지 않는 위젯으로 한번 그려진 후 다시 그려지지 않는다.
//프로퍼티로 변수는 가지지 않고 필요시 상수를 가질 수 있다.
// home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯이 된다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home:
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text("Hello World"),
      //   ),
      //   body: Text(
      //     'Hello World',
      //     style: TextStyle(fontSize: 40),
      //   )
      // )
        MyHomePage(title: 'Hello World'),
    );
  }
}

//시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면.
//stateful --> 상태가 있는 경우 사용.
//createState는 StatefuleWidget이 생성될때 한번만 호출된다.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//위 MyHomePage 클래스의 상태를 나타내는 State 클래스. 거의 모든 코드는 이 클래스에 작성이된다.
// 화면을 크리는 모든 디자인 요소를 위젯이라고 한다.
// build 메서드 안에 화면에 그려질 부분을 정의한다.
class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  var _text = 'Hello';

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text(
        _text,
        style: TextStyle(fontSize: 40),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _text = 'World';
          });
        },
        child: Icon(Icons.touch_app),
      ),
    );

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    //   appBar: AppBar(
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: Column(
    //       // Column is also a layout widget. It takes a list of children and
    //       // arranges them vertically. By default, it sizes itself to fit its
    //       // children horizontally, and tries to be as tall as its parent.
    //       //
    //       // Invoke "debug painting" (press "p" in the console, choose the
    //       // "Toggle Debug Paint" action from the Flutter Inspector in Android
    //       // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
    //       // to see the wireframe for each widget.
    //       //
    //       // Column has various properties to control how it sizes itself and
    //       // how it positions its children. Here we use mainAxisAlignment to
    //       // center the children vertically; the main axis here is the vertical
    //       // axis because Columns are vertical (the cross axis would be
    //       // horizontal).
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           '$_counter', //변수 정수 값을 문자열로 변경하려고 $ 를 붙임.
    //           style: Theme.of(context).textTheme.headline4,
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter, //함수를 인수로 전달하는 방법 1. 메서드명 직접 작성, 2. 람다식, 3. 혹은 익명함수.
    //     tooltip: 'Increment',
    //     child: Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }


}



/*
  함수를 인수로 전달하는 방법 1. 메서드명 직접 작성, 2. 람다식, 3. 혹은 익명함수.
  onPressed: _increementCounter

  onPressed: () => incrementCounter()

  onPressed:(){
    return _incrementCounter();
  }

  빠르게 작성하기
  stless
  stful

 */
