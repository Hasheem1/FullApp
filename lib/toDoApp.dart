import 'package:flutter/material.dart';
import 'UI/component/cardTask.dart';
import 'UI/designs/colors.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _TodoappState();
}

class _TodoappState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: bgScaffold,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("To Do App",
          style: TextStyle(color: txtColor,),
        ),
      ),

      body: ListView.builder(
        itemCount: allTask.length,
        itemBuilder: (context, index) {
          return Cardtask(taskTitle: allTask[index].task);
        },
      ),
    );
  }
}
// ...allTask.map((item) => Cardtask(taskTitle:item.task)).toList()

class Task{
  String task;
  bool isDo;
  Task({required this.task,this.isDo = false});
}
List <Task> allTask =[
  Task(task: "flutter assignment"),
  Task(task: "dart assignment"),
  Task(task: "gym"),
  Task(task: "take a break"),
  Task(task: "take a break"),
  Task(task: "take a break"),
];




// Scaffold(backgroundColor: bgScaffold,
// appBar: AppBar(title: Text("To do App",style: TextStyle(color: txtColor),),
// backgroundColor: appBarColor,
// ),
// body: Column(
// children: [
//
// Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Container(height: 100,width: 380,
//
// child: Card(margin: EdgeInsets.all(10),
// color: taskCard,
//
// shape: Border.all(),
// child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Text("Flutter assignment",style: TextStyle(color:txtColor ),),
// Icon(Icons.check_box_outline_blank)
// ],
// ) ,
// ),
// ),
// ),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Container(height: 100, width: 380,
//
// child: Card(margin: EdgeInsets.all(10),
// color: taskCard,
//
// shape: Border.all(),
// child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Text("Flutter assignment",style: TextStyle(color:txtColor ),),
// Icon(Icons.check_box_outline_blank)
// ],
// ) ,
// ),
// ),
// ),
// ],
// )
// ],
// ),
//
//
// );

//////////// 222
//[Widget(flutter,false),Widget(dart,false),Widget(gym,false)]
// [Widget'fluuter a','dart','gym','take']
// Cardtask(taskTitle: allTask[0].task,),
// Cardtask(taskTitle: allTask[1].task,),
// Cardtask(taskTitle: allTask[2].task,),
// Cardtask(taskTitle: allTask[3].task,),
// Cardtask(),
// Cardtask(),
// FractionallySizedBox(
//   widthFactor: 0.8,
//   child: Container(
//     // width: 200,
//     color: taskCard,
//     child: Row(
//       children: [
//         Text("Flutter assignment",
//         style: TextStyle(
//           color: txtColor
//         ),),
//         Icon(Icons.check_box_outline_blank)
//       ],
//     ),
//   ),
// ),
