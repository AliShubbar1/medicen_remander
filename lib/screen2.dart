import 'package:flutter/material.dart';
import 'package:medicen_remander/insert_medicen.dart';

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff5FBFC9),

    appBar: AppBar(


      backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30.0),bottomRight:Radius.circular(30.0))),
      title: Text('قائمة العلاجات اليومية', style: TextStyle(fontSize: 29.0,color: Colors.black),),
    ),
    body: Column(
      children: <Widget>[],
    ),

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> AddMedicen(),
        ));
      },
    ),

//      body: Container(
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage("photo/Home2.jpg"),
//            fit: BoxFit.fill,
//          ),
//        ),
//
//        child: Container(
//
//          child: Align(
//            alignment: Alignment(-0.9 , 0.9),
//            child: RaisedButton(child: Text('رجوع', style: TextStyle(fontSize: 39.0, color: Colors.black),),
//              disabledColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0),bottomRight:Radius.circular(30.0))),
//              onPressed: (){
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context)=> MyHomePage(),
//
//                ));
//              },),
//
//          ),
//
//        ),
////
//      ),

    );
  }

}