
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiMain(),
    );
  }
}

class BmiMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BmiMainState();
  }

}

class _BmiMainState extends State<BmiMain> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose(){
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('비만도 계산기')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                controller: _heightController,
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '키를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '몸무게'
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '몸무게를 입력하세요';
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    //폼에 입력된 값 검증
                    if(_formKey.currentState!.validate()){
                      //검증처리
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BmiResult(
                            double.parse(_heightController.text.trim()),
                            double.parse(_weightController.text.trim()))),
                      );
                    }
                  },
                  child: Text('결과'),
                )
              )
            ],
          )
        )
      )
    );
  }

}

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;

  BmiResult(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height/100) * (height/100));
    print('bmi : $bmi');

    String _calcBmi(double bmi) {
      if(bmi >= 35){
        return '고도 비만';
      } else if(bmi >= 30) {
        return '2단계 비만';
      } else if(bmi >= 25) {
        return '1단계 비만';
      } else if(bmi >= 23){
        return '과체중';
      } else if(bmi >= 18.5){
        return '정상';
      } else {
        return '저체중';
      }
    }

    Widget _buildIcon(double bmi) {
      if(bmi >= 23){
        return Icon(
          Icons.sentiment_very_dissatisfied,
          color: Colors.red,
          size: 100,
        );
      } else if(bmi >= 18.5) {
        return Icon(
          Icons.sentiment_satisfied,
          color: Colors.green,
          size: 100,
        );
      } else {
        return Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.orange,
          size: 100,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('비만도 계산기')),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _calcBmi(bmi),
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                height: 16,
              ),
              _buildIcon(bmi),
            ],
          )
      ),
    );
  }
}

//
// class MyCustomForm extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyCustomFormState();
//   }
// }
//
// class _MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();//Form 위젯에 유니크한 키값을 부여하고 검증시 사용
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey, //Form위젯에 formkey를 지정
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             validator: (value){
//               if(value!.isEmpty){
//                 return "글자를 입력하세요.";
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: (){
//                 if(_formKey.currentState!.validate()){
//                   ScaffoldMessenger.of(context)
//                       .showSnackBar(SnackBar(content: Text("검증완료")));
//                 }
//               },
//               child: Text('검증'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _MyCustomFormState extends State<MyCustomForm> {
//   final myController = TextEditingController(); //TextField의 현재값을 얻는데 필요
//
//   @override
//   void initState() {
//     super.initState();
//     myController.addListener(_printLatestValue); //상태 모니터
//   }
//
//   @override
//   void dispose() { //화면 종료시 반드시 위켓 트리에서 컨트롤러를 해제해야 한다.
//     myController.dispose();
//     super.dispose();
//   }
//
//   _printLatestValue() {
//     print("두 번째 text field: ${myController.text}");
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(//text 변경 감지
//               onChanged: (text){
//                 print("첫 번째 text field: $text");
//               },
//             ),
//             TextField(
//               controller: myController, //컨트롤러 지정
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


