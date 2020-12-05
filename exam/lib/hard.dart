import 'package:flutter/material.dart';
import 'main_page.dart';
import 'dart:math';
import 'dart:io';
int rold=1;
bool press=true;
class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hard Level"),
    ),
        drawer: Drawer(
          child: ListView(
            children:<Widget> [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text('Options', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>main_page()));
                },
              ),
              ListTile(
                title: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                onTap: () {
                  exit(0);
                },
              )
            ],
          ),
        ),
      backgroundColor: Colors.grey,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               decoration: BoxDecoration(
               ),
               height: 200,
              width: 200,
              child:FlatButton(onPressed: (){
                setState(() {
                  rold=Random().nextInt(5)+1;
                });
              },
                child: show(),
              ) ,
             ),
           ],
        ),
      ),
        
    );
  }
   Widget show()
   {
     if(press==true)
       {
         return Image(image: AssetImage('images/dice$rold.jpg'));
       }
     if(press==false)
       { press=true;
         return Image(image: AssetImage('images/profile.jpg'));
       }
   }
 }




