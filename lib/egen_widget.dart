import 'dart:html';

import "package:flutter/material.dart";

class NyText extends StatelessWidget {
   String ? text; 
   String ? nummer; 
   int ? tal ; 
  // double null; 
   //bool ? true; 
  // List ? lista; 




   NyText({this.text, this.nummer}); 

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text as String) , 
          Text(nummer as String)
        ],
      
    ) ; 
    
  }
}