import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicen_remander/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("photo/Home.jpg"),
            fit: BoxFit.cover,
          ),
        ),

          child: Container(
            child: Align(
               alignment: Alignment(0.999 , -0.1),
              child: RaisedButton(child: Text('  أبدء   ', style: TextStyle(fontSize: 60.0, color: Colors.black),),
              disabledColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft:Radius.circular(50.0),bottomLeft:Radius.circular(50.0))),
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> Screen2(),
                ));
                },),
            ),
          ),
//
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
