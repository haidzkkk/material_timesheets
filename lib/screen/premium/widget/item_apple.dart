
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class ItemApple extends StatelessWidget {
  ItemApple({super.key, required this.icon, required this.message});

  IconData icon;
  String message;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Icon(icon, size: 30,),
          const SizedBox(height: 10,),
          Container(
            width: 100,
            alignment: Alignment.center,
            child: Text(message, textAlign: TextAlign.center, style: bodyItemStyle,)
          )
        ],
      ),
    );
  }
}
