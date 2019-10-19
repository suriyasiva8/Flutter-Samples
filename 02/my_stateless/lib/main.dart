import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:'Hello',
    theme: ThemeData(
      primaryColor: Colors.orange,
      accentColor: Colors.black,
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I'm text line one"),
            Text("I'm text line two"),
            RaisedButton(
              onPressed: (){},
              child: Text('Login'),
              color: Colors.orange,
              splashColor: Colors.blue, //this will on select button what color we want
              
            )
          ],
        ) ,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add_circle_outline
        ),
      ),
      
   
    ),
  );
  }
}