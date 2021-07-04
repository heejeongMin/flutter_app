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


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

enum Gender  {MAN, WOMAN}

class _MyHomePageState extends State<MyHomePage> {
  // var _isChecked = false;

  // Gender _gender = Gender.MAN;

  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  var _selectedValue = '첫 번째';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
         title: Text('Hello World'),
       ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[



              // DropdownButton(
              //     value: _selectedValue,
              //     items: _valueList.map(
              //         (value){
              //           return DropdownMenuItem(
              //               value: value,
              //               child: Text(value),
              //           );
              //         },
              //     ).toList(),
              //   onChanged: (value){
              //       setState(() {
              //         _selectedValue = value as String;
              //       });
              //   },
              // ),



              // ListTile(
              //   title:Text('남자'),
              //   leading: Radio(
              //     value: Gender.MAN,
              //     groupValue: _gender,
              //     onChanged: (value){
              //       setState(() {
              //         _gender = value as Gender;
              //       });
              //     },
              //   )
              // ),
              // ListTile(
              //     title:Text('여자'),
              //     leading: Radio(
              //       value: Gender.WOMAN,
              //       groupValue: _gender,
              //       onChanged: (value){
              //         setState(() {
              //           _gender = value as Gender;
              //         });
              //       },
              //     )
              // ),
              // SizedBox(
              //   height: 40,
              // ),
              // RadioListTile(
              //     title:Text('남자'),
              //     value: Gender.MAN,
              //     groupValue: _gender,
              //     onChanged: (value) {
              //       setState(() {
              //         _gender = value as Gender;
              //       });
              //     }),
              // RadioListTile(
              //     title:Text('여자'),
              //     value: Gender.WOMAN,
              //     groupValue: _gender,
              //     onChanged: (value) {
              //       setState(() {
              //         _gender = value as Gender;
              //       });
              //     })



              // Checkbox(
              //     value: _isChecked,
              //     onChanged: (value){
              //       setState(() {
              //         _isChecked = value!;
              //       });
              //     }
              // ),
              // SizedBox(
              //   height: 40,
              // ),
              // Switch(
              //   value: _isChecked,
              //   onChanged: (value){
              //     setState(() {
              //       _isChecked = value;
              //     });
              //   },
              // )
            ],
        )
      )
    )



    // TextField(
      // decoration: InputDecoration(
      //   border: OutlineInputBorder(),
      //   labelText: '여기에 입력하세요',
      // ),
    // )
   );
  }


}


