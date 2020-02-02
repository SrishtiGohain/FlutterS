import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class myButton extends StatelessWidget{
  String buttonTitle;
  Function myFunc;
  Color myColor;
  myButton(String bname,Color c,Function f)
  { buttonTitle=bname;
  myFunc=f;
  myColor=c;
 }
 @override 
 Widget build(BuildContext build){
   return Padding(padding: EdgeInsets.all(7),
  
   child: FloatingActionButton(
              onPressed: myFunc,
              tooltip: buttonTitle,
              child: Icon(Icons.arrow_back),
            ),


   );
 }
}