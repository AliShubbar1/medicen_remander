import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';


class AddMedicen extends StatelessWidget{

  final format = DateFormat("HH:mm");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5FBFC9),


      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30.0),bottomRight:Radius.circular(30.0))),
        backgroundColor: Colors.white,

        title: Text('آضف العلاج', style: TextStyle(color: Colors.redAccent),),
      ),
      body: new Container(
        child: new ListView(
        children: <Widget>[


          // اسم العلاج


          new Padding(padding: EdgeInsets.all(10.0),)  ,

          new Container(
              margin: EdgeInsets.only( right:30.0, left: 30.0 ),
              width: 250.0,

             child:  new TextField(
               style: TextStyle(fontSize: 18.0,color: Colors.deepPurple,),
               textAlign: TextAlign.right,

               decoration: InputDecoration(hintText: 'اكتب اسم العلاج مثلا : بداسيتول',
                   labelText: 'اسم العلاج',
                   ),


        )

          ),

          //ن،ع العلاج


          new Padding(padding: EdgeInsets.all(10.0),)  ,

          new Container(
            margin: EdgeInsets.only( right:30.0, left: 30.0 ),
            width: 250.0,

            child: new TextField(
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),

              decoration: InputDecoration(hintText: 'اكتب نوع العلاج مثلا : قطرة عين, قرص دواء ، كبسول',
              labelText: ' نوع العلاج'),
            ),
          ),


          // ملاحظة حول العالج


          new Padding(padding: EdgeInsets.all(10.0),)  ,

          new Container(
            margin: EdgeInsets.only( right:30.0, left: 30.0 ),
            width: 250.0,

            child: new TextField(
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),

              decoration: InputDecoration(hintText: 'اكتب ملاحظة مثلا : بعد الاكل',
                  labelText: ' ملاحظة'),
            ),
          ),


          // التوقيت الاول

          new Column(
            children: <Widget>[


              new Padding(padding: EdgeInsets.all(10.0),),

              Text('اضغط الاعداد التوقيت الاول',style: TextStyle(fontSize: 20.0),),
              new Container(
                margin: EdgeInsets.only(right: 120.0, left: 120.0),
                width: 250.0,
                color: Colors.white,

                child: DateTimeField(
                  format: format,
                  textAlign: TextAlign.center,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
                    return DateTimeField.convert(time);
                  },
                ),

              ),
            ],
          ),





          // التوقيت الثاني
          new Column(
            children: <Widget>[


              new Padding(padding: EdgeInsets.all(10.0),),

              Text('اضغط الاعداد التوقيت الثاني',style: TextStyle(fontSize: 20.0),),
              new Container(
                margin: EdgeInsets.only(right: 120.0, left: 120.0),
                width: 250.0,
                color: Colors.white,

                child: DateTimeField(
                  format: format,
                  textAlign: TextAlign.center,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
                    return DateTimeField.convert(time);
                  },
                ),

              ),
            ],
          ),

          // التوقيت الثالث


          new Column(
            children: <Widget>[


              new Padding(padding: EdgeInsets.all(10.0),),

              Text('اضغط لاعداد التوقيت الثالث',style: TextStyle(fontSize: 20.0),),
              new Container(
                margin: EdgeInsets.only(right: 120.0, left: 120.0),
                width: 250.0,
                color: Colors.white,

                child: DateTimeField(
                  format: format,
                  textAlign: TextAlign.center,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
                    return DateTimeField.convert(time);
                  },
                ),

              ),
            ],
          ),

          // التوقيت الرابع


          new Column(
            children: <Widget>[


              new Padding(padding: EdgeInsets.all(10.0),),

              Text('اضغط لاعداد التوقيت الرابع',style: TextStyle(fontSize: 20.0),),
              new Container(
                margin: EdgeInsets.only(right: 120.0, left: 120.0),
                width: 250.0,
                color: Colors.white,

                child: DateTimeField(
                  format: format,
                  textAlign: TextAlign.center,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
                    return DateTimeField.convert(time);
                  },
                ),

              ),
            ],
          ),





          // الوقت الخامي
          new Column(
            children: <Widget>[


              new Padding(padding: EdgeInsets.all(10.0),),

              Text('اضغط الاعداد الوقت الخامس',style: TextStyle(fontSize: 20.0),),
              new Container(

                margin: EdgeInsets.only(right: 120.0, left: 120.0),
                width: 250.0,
                color: Colors.white,


                child: DateTimeField(
                  format: format,
                  textAlign: TextAlign.center,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
                    return DateTimeField.convert(time);
                  },
                ),

              ),
            ],
          ),









    ]
    )
      ),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.save_alt),

      ),


    );
  }
}


class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("HH:mm ");
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Text('Basic Time field (${format.pattern})'),

        DateTimeField(

          format: format,
          onShowPicker: (context, currentValue) async {
            final time = await showTimePicker(context: context,
                initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),);
            return DateTimeField.convert(time);
          },
        )
      ],
    );
  }

}