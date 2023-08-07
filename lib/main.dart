import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee'),),

          backgroundColor: Colors.red,
        ),
        body: DicePage(),

      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicebutton = 1;
  int rightdicebutton = 1;
  void state_change(){
    setState(() {
      leftdicebutton = Random().nextInt(6) + 1 ;
      rightdicebutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children : [Row(
        children: [
          Expanded(
            // flex: 1, --> by default it is
            child: TextButton (
              onPressed: (){
                state_change();
              },
              child: Image.asset('images/dice$leftdicebutton.png'),
            ),
          ),

          Expanded(
            // flex: 1, --> by default it is
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: (){
                state_change();
              },

              child: Image.asset('images/dice$rightdicebutton.png'),
            ),


          ),

        ],
      ),

        Container(
          child:  Text( 'Made with 💙 by Aman Aggarwal',

              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Pacifico',
              )


          ),
        )
    ],
    );


  }
}


