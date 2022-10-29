import 'package:flutter/material.dart';
import 'package:untra/dayCard.dart';
import 'package:untra/login.dart';
class timetable extends StatefulWidget {

  @override
  State<timetable> createState() => _timetableState();
}

class _timetableState extends State<timetable> {
var addDay = Text("اضافة يوم",style:TextStyle(fontWeight: FontWeight.bold),);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text("Untra",style:TextStyle(fontSize: 35 )),
        ),
        drawer: Drawer(
            child: Container(
                decoration:BoxDecoration(
                    color: Colors.white
                ) ,
                child: ListView(
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: Text("Untra",
                            style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListTile(
                          leading: Icon(Icons.person, size: 25, color: Theme.of(context).accentColor,),
                          title: Text('حسابي', style: TextStyle(fontSize: 25, color: Theme.of(context).accentColor),),
                          onTap: (){

                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.table_chart_sharp, size: 25, color: Theme.of(context).accentColor,),
                          title: Text('الجدول', style: TextStyle(fontSize: 25, color: Theme.of(context).accentColor),),
                          onTap: (){

                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.power_settings_new, size: 25, color: Theme.of(context).accentColor,),
                          title: Text('تسجيل خروج', style: TextStyle(fontSize: 25, color: Theme.of(context).accentColor),),
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                          }
                      ),
                    ]
                )
            )
        ),
        body:SingleChildScrollView(
            child: Column(
              children: [
              Container(
              height: 10,
              //let's create a common header widget
            ),
            SafeArea(
            child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
        child: Column(
          children: [
            ElevatedButton(onPressed: (){ }, child: Text("اضافة يوم",style: TextStyle(fontSize: 27),)
            ),
            //ListView(),
  ]
    )
    )
    )]
    )
        )
    );
  }
}
