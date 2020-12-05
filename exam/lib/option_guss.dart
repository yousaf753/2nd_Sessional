import 'package:flutter/material.dart';
import 'hard.dart';
import 'dart:async';
import 'main_page.dart';
import 'dart:io';
import 'hard.dart';
int correct=1;
class guss extends StatefulWidget {
     void get_correct(int a)
     {
       correct=a;
     }
  @override
  _gussState createState() => _gussState();
}

class _gussState extends State<guss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'Guess Image ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child:setimage(1),
                  onPressed:() {
                    showAlertDialog(context,1);
                  },
                ),
                FlatButton(
                  child:setimage(2),
                  onPressed:() {
                    showAlertDialog(context,2);
                  },
                ),
                FlatButton(
                  child:setimage(3),
                  onPressed:() {
                    showAlertDialog(context,3);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child:setimage(4),
                  onPressed:() {
                    showAlertDialog(context,4);
                  },
                ),
                FlatButton(
                  child:setimage(5),
                  onPressed:() {
                    showAlertDialog(context,5);
                  },
                ),
                FlatButton(
                  child:setimage(6),
                  onPressed:() {
                    showAlertDialog(context,6);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context,int a) {
    if (correct == a) {
      AlertDialog alert = AlertDialog(
        title: Text("Congratulation you pickup the right Dice", style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
      setState(() {
        Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => hard())));
      });
    }
    else
    {
      AlertDialog alert = AlertDialog(
        title: Text(" You pickup the Wrong Dice", style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
      setState(() {
        Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => hard())));
      });
    }
  }
  Widget setimage(int d)
  {
    return Image(
      height: 80,
      width: 80,
      image: AssetImage('images/dice$d.jpg'),
    );
  }
}
