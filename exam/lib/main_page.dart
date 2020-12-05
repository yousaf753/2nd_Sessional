import 'package:flutter/material.dart';
import 'simple.dart';
import 'hard.dart';
class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Select Level",style: TextStyle(fontSize: 50,color: Colors.black),),
             SizedBox(
               height: 70,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.black26,
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
                   decoration: BoxDecoration(
                     color: Colors.black26,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   margin: EdgeInsets.only(left: 30),
                   child: FlatButton(onPressed: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>simple()));
                     });
                   }
                       , child: Text("Hard",style: TextStyle(fontSize: 30,color: Colors.white),)),
                 ),

               ],
             ),

          ],
        ),
      )
    );
  }
}
