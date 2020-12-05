import 'package:flutter/material.dart';
import 'dart:math';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
class simple extends StatefulWidget {
  @override
  _simpleState createState() => _simpleState();
}

class _simpleState extends State<simple> {
  int left_dice=1;
  int right_dice=1;
  int left_count;
  int right_count;
  String winer=null;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Role Dice",style: TextStyle(fontSize: 50,color: Colors.black),),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(onPressed: (){
                    setState(() {
                      left_dice=Random().nextInt(5)+1;
                      left_count=left_count+left_dice;
                    });
                  }
                    , child: Image(
                      image: AssetImage('images/dice$left_dice.jpg'),
                    ),
                    ),
                  ),
                Expanded(
                  child: FlatButton(onPressed: (){
                    setState(() {
                      right_dice=Random().nextInt(5)+1;
                      right_count=right_count+right_dice;
                    });
                  }
                    , child: Image(
                      image: AssetImage('images/dice$right_dice.jpg'),
                    ),
                    ),
                  ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(top: 100),
              child: FlatButton(onPressed: (){
                setState(() {
                  Check();
                  alert(
                    context,
                    title: Text('Winer is',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                    content: Text('$winer',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                    textOK: Text('OK'),
                  );
                });
              }
                  , child: Text("Check Result",style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
          ],
        ),
    );
  }
  void Check()
  {
    if (left_count>=right_count)
      {
        winer= "Winer is Left Dice";
      }
    else
      {
        winer= "Winer is Right Dice";
      }
  }
}
