import 'package:flutter/material.dart';
import 'main_page.dart';
import 'dart:math';

class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int dice=1;
  bool appre=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: 200,
              width: 200,
              child:FlatButton(onPressed: (){
                setState(() {
                  dice=Random().nextInt(5)+1;
                  appre=false;
                });
              },
                child:disapre(),
              ) ,
             ),
           ],
        ),
      ),
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>main_page()));
            });
          },
          child: Icon(Icons.keyboard_return_rounded),
          backgroundColor: Colors.black,
        )
    );
  }
  Widget disapre()
  {  if(appre=false)
    {
      return Container(
        color: Colors.grey,
      );

    }
   else  if (appre=true)
      {
        return  Image(
          image: AssetImage('images/dice$dice.jpg'),
        );

      }

  }
}
