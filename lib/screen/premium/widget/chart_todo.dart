
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_timesheets/screen/premium/widget/item_todo.dart';

import '../../../data/model/todo.dart';
import '../../../utils/style.dart';

class ChartTodo extends StatelessWidget {
  ChartTodo({super.key, required this.todos});
  List<Todo> todos;

  double sizeWidget = 70;
  double paddingItem = 0;

  @override
  Widget build(BuildContext context) {
    paddingItem = MediaQuery.of(context).size.width * 0.08;
    return Stack(
      children: [
        Positioned(
            top: sizeWidget * 2,
            bottom: sizeWidget / 2,
            left: paddingItem + (sizeWidget / 2),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: 3,
                color: todos.last.color)
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: todos.length,
            itemBuilder: (context, index){
              return IteamTodo(todo: todos[index], paddingItem: paddingItem);
            },
          separatorBuilder: (context, index) => const SizedBox(height: 20,),
        ),
      ],
    );
  }
}
