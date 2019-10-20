import 'dart:math';

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){

   return MaterialApp(
     title: 'Bg Changer',
     debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
     home: Scaffold(
       appBar: AppBar(
         title: Text('Random Background'),
       ),
       body: HomePage(),
     )
   );    

  }
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>_HomePageState();

}
class _HomePageState extends State<HomePage>{
  var colors=[
    Colors.amber,Colors.black,Colors.blue,
    Colors.green,Colors.red,Colors.pink,Colors.orange
  ];
  var currentColor=Colors.white;
  setRandomColor(){
    var rnd= Random().nextInt(7);
    setState(() {
     currentColor= colors[rnd]; 
    });
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color:currentColor,
      child: Center(
        child: RaisedButton(
          color:Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0 , 20.0, 10.0),
          child: Text('Change it!',
          style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold )),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)          
             ),
        ),
      ),
    );
  }

}