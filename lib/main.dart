import 'dart:async';

import 'package:flutter/material.dart';
import 'package:googleapis/apigeeregistry/v1.dart';
import 'package:googleapis/run/v1.dart';

void main() {
  runApp(JulikApp());
}

class JulikApp extends StatefulWidget  {
  @override
   State<StatefulWidget> createState(){
     // TODO: Implement createState
     return _JulikAppState();
   }
}

class _JulikAppState extends State<JulikApp>{
    bool _loading;
    double _progressValue

     @override
     void initstate(){
      _loading = false;
      _progressValue= 0.0;
      super.initState();
     }
     Widget built(Buildcontext context){

     return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Germany for homeless"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            Padding: EdgeInsets.all(16)
            child: _loading ?
             Column(
              mainAxisAlingment: MainAxisAlignment.center,
          children: <Widget>[
             LinearProgressIndicator(value: _progressValue,),
            Text(
              '${(_progessValue * 100).round()}$%',
            style: TextStyle(color: Colors.white, fontSize: 20 ),
            ),

          ];
          ),
          : Text(
              "Germany create for another people, not for german",
            style: TextStyle(color: Colors.white, fontSize: 20 ),

          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          _loading = !_loading;
          _updateProgress();
          });
        child: Icon(icons.cloud_download),
        ),
      ),
     );
  }
  void _updateProgress(){
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t){
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(i) == '1.0'){
          _loading = false;
          t.cancel(){
            _progressValue =
          }
        }
      });
    });
  }
  }