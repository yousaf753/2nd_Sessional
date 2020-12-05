import 'package:flutter/material.dart';
import 'simple.dart';
import 'hard.dart';
import 'about_me.dart';
class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 200,),
          Text("Select Level",style: TextStyle(fontSize: 50,color: Colors.black),),
             SizedBox(
               height: 70,
             ),
            SizedBox(height: 100,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: 50,
                   width: 150,
                   decoration: BoxDecoration(
                     color: Colors.cyan,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   margin: EdgeInsets.only(right: 30),
                   child: FlatButton(onPressed: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>simple()));
                     });
                   }
                       , child: Text("Simple",style: TextStyle(fontSize: 30,color: Colors.white),)),
                 ),
                 Container(
                   height: 50,
                   width: 150,
                   decoration: BoxDecoration(
                     color: Colors.cyan,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   margin: EdgeInsets.only(left: 30),
                   child: FlatButton(onPressed: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>hard()));
                     });
                   }
                       , child: Text("Hard",style: TextStyle(fontSize: 30,color: Colors.white),)),
                 ),
               ],
             ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 200,top: 300),
              child: FlatButton(onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
                });
              }
                  , child: Text("ABOUT US",style: TextStyle(fontSize: 30,color: Colors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}
