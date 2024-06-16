import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('myBox');

// first time app opeing
  void createInitialDate() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

// load data from data base
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
