

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_timesheets/data/model/comment.dart';
import 'package:material_timesheets/utils/style.dart';

import 'item_rate.dart';

class ItemComment extends StatelessWidget {
  ItemComment(this.comment, {super.key, required this.isBorder});

  Comment comment;
  bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: isBorder ? BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(20)
      ) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(comment.title, style: titleItemStyle,),
          // SizedBox(
          //   width: 100,
          //     height: 30,
          //     child: ItemRate(rate: comment.rating)
          // ),
          Text(comment.body, style: bodyItemStyle,),
        ],
      ),
    );
  }
}
