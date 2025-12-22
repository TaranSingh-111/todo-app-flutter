import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body:ListView(
        children: [
          ToDoTile(
            taskName: "Do Homework",
            taskCompleted: true,
            onChanged: (p){},
          ),
          ToDoTile(
            taskName: "Go Gym",
            taskCompleted: true,
            onChanged: (p){},
          ),
          ToDoTile(
            taskName: "Do Gardening",
            taskCompleted: false,
            onChanged: (p){},
          ),
          ToDoTile(
            taskName: "Go Play",
            taskCompleted: false,
            onChanged: (p){},
          ),
          ToDoTile(
            taskName: "Do Nothing",
            taskCompleted: true,
            onChanged: (p){},
          ),
        ],
      ),
    );
  }
}
