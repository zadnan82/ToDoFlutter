import "package:flutter/material.dart";
import 'package:second_project/modell.dart';
import 'package:second_project/ny_todo.dart';
import 'package:second_project/todo_list.dart';
import 'modell.dart';
 
void main() {
 runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 theme: ThemeData(primarySwatch: Colors.blue),
 title: "It Högskolan Flutter App",
 home: MyHomePage(),
 );
 }
}
 
class MyHomePage extends StatefulWidget {
  
  
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {

  final List <Modellen> helaToDoListan = [] ; 

void startToDo(BuildContext context){
  showModalBottomSheet(context: context , builder: (_) => GestureDetector(
    child: NyTodo(adderaNyToDo),));
}

void adderaNyToDo (String titel , String kommentar , String datum){
  final newToDo = Modellen(titel, kommentar , datum);
  setState(() {
    helaToDoListan.add(newToDo);
  });

}

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text("To do app"),
 ),
 body: Center(
 child: ToDoList(helaToDoListan),
 ),
 floatingActionButton: FloatingActionButton(onPressed: () => startToDo(context),),
 );
 }
}