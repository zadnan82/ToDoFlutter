import "package:flutter/material.dart"; 

class NyTodo extends StatefulWidget {
  final Function addTodo; 

  NyTodo(this.addTodo); 

  @override
  State<NyTodo> createState() => _NyTodoState();
}

class _NyTodoState extends State<NyTodo> {

final todoController = TextEditingController();
final commentController = TextEditingController(); 
final datumController = TextEditingController(); 


void skickaTillbaka(){
  final todo = todoController.text; 
  final comment = commentController.text; 
  final datum = datumController.text; 

  widget.addTodo(todo, comment, datum);
  Navigator.of(context).pop();
}

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        TextField(decoration: InputDecoration(labelText: "Titel" ),
        controller : todoController) , 
        TextField(decoration: InputDecoration(labelText: "Kommentar" ), 
        controller: commentController,),
        TextField(decoration: InputDecoration(labelText: "Datum" ),
        controller: datumController,),
        ElevatedButton(onPressed: skickaTillbaka, child:Text("Bekräfta") ,),
      ],
    ); 
  }
}