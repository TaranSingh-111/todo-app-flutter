import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List toDoList = [
    ["Do Homework", true],
    ["Go Gym", true],
    ["Do Gardening", false],
    ["Go Play", false],
    ["Do Nothing", true],
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: Text(
          'T O  D O',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),

      //add task button
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),

      body:ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }
      ),
    );
  }
}
