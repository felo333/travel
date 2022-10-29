import 'package:flutter/material.dart';
import 'package:untra/login.dart';
import 'package:untra/timatable.dart';
class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome());
  }
}
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
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
Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> timetable()));
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
            )
    )
    );
  }
}
