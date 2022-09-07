import "package:flutter/material.dart";
import 'package:second_project/modell.dart'; 

class ToDoList extends StatelessWidget {
  
  final List <Modellen> listan ; 

  ToDoList(this.listan);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listan.length,
      itemBuilder:  (context, index) {
        return Padding(
          padding:  EdgeInsets.only(bottom: 60),
          child: Card(
            elevation:  5,
            child: Column(
              children: [
              Text(listan[index].titel , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),), 
          
              Text(listan[index].kommentar , style: TextStyle(fontSize: 20),),
              Text(listan[index].datum)
            ],)
             
            
          ),
        );
      } ,
    );
  }
}