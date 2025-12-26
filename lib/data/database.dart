import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{

  List toDoList = [];

  final _myBox = Hive.box('myBox');

  //first time ever opening this app
  void createInitialData(){
    toDoList =[
      ["Add Some Tasks", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }

}