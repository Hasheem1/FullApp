import 'package:flutter/material.dart';

import '../designs/colors.dart';

class Cardtask extends StatefulWidget {
  String taskTitle;

  Cardtask({required this.taskTitle});

  @override
  State<Cardtask> createState() => _CardtaskState();
}

class _CardtaskState extends State<Cardtask> {
  bool icon = true;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 150,
        child: Card(
          color: taskCard,
          // surfaceTintColor:taskCard ,
          child:  Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.taskTitle,
                  style: TextStyle(
                      color: txtColor
                  ),),

                GestureDetector(
                    onTap: () {
                      setState(() {
                        icon = !icon;
                      });
                    },
                    child: Icon(icon ?
                    Icons.check_box_outline_blank
                    :Icons.check_box,color: Colors.white,)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}