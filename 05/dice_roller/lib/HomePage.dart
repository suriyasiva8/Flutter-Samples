import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() {
    // TODO: implement createState
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  AssetImage one= AssetImage('images/one.png');
  AssetImage two= AssetImage('images/two.png');
  AssetImage three= AssetImage('images/three.png');
  AssetImage four= AssetImage('images/four.png');
  AssetImage five= AssetImage('images/five.png');
  AssetImage six= AssetImage('images/six.png');
  AssetImage diceImage;
  AssetImage diceImage2;

  @override
  void initState(){
    super.initState();
    setState(() {
     diceImage=one; 
     diceImage2=two;
    });
  }

  void setDiceValue(){
    AssetImage newImage;
    int random=1+Random().nextInt(6);
    switch (random) {
      case 1:
      newImage=one;
      break;
      case 2:
      newImage=two;
      break;
      case 3:
      newImage=three;
      break;
      case 4:
      newImage=four;
      break;
      case 5:
      newImage=five;
      break;
      case 6:
      newImage=six;
      break;  
    }
   setState(() {
    diceImage=newImage; 
    diceImage2=two;
    
   });
  }
  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                image:diceImage,
                height: 100,
                width: 100,
                
              ),
                Image(
                image:diceImage2,
                height: 100,
                width: 100,
                
              ),
              ],
            ),
              
             
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Dice Roller!',
                  ),
                  onPressed: setDiceValue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                ),
              )
            ],
          )
          
        ),
      ),
    );
  }

}  
  
