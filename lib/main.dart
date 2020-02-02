import 'package:flutter/material.dart';   
// ignore: must_be_immutable
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var random = 0 ;
    Text safeText = Text("Safe");
    Text dangerText = Text("Danger");
    return MaterialApp(
      title: 'Knights - Gun Detect',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Knights - Gun Detect'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: _detectGun,
                child: Text(
                    'Take a pic',
                    style: TextStyle(fontSize: 20)
                ),
              )
              , Expanded(child: safeText,)
              , Expanded(child: dangerText,)
            ],
          ),
        ),
      ),
    );  }

  void _detectGun() {
    print('Button pressed');
    //setState();
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}