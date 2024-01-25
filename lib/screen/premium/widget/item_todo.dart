
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_timesheets/data/model/todo.dart';

import '../../../utils/style.dart';

class IteamTodo extends StatelessWidget {
  IteamTodo({super.key, required this.todo, required this.paddingItem});

  Todo todo;
  double paddingItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: paddingItem),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: todo.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Random().nextInt(40).toDouble() + 50),
                  bottomRight: Radius.circular(Random().nextInt(40).toDouble() + 50),
                  topLeft: Radius.circular(Random().nextInt(40).toDouble() + 50),
                  topRight: Radius.circular(Random().nextInt(40).toDouble() + 50),
                )
            ),
            child: Text(todo.time, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          const SizedBox(width: 10,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.title, style: titleItemTodoStyle,),
                Text(todo.body, style: bodyItemStyle,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
