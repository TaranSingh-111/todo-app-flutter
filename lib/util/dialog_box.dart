import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      content: Container(
        height: 160,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 10, left: 8, right: 8,),
          child: Column(
            children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
              controller: controller,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              MyButton(text: "Save", onPressed: onSave),
              MyButton(text: "Cancel", onPressed: onCancel),

            ],)
          ],),
        ),
      ),
    );
  }
}
