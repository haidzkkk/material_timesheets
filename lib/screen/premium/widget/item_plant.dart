
import 'package:flutter/material.dart';
import 'package:material_timesheets/data/model/plant.dart';

import '../../../utils/style.dart';

class ItemPlant extends StatelessWidget {
  const ItemPlant(this.plant, {super.key});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08 ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: plant.color,
            ),
            child: Icon(plant.icon, color: Colors.white,),
          ),
          const SizedBox(width: 10,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(plant.title, style: titleItemStyle,),
                Text(plant.body, style: bodyItemStyle,)
              ],
            ),
          )
        ],
      ),
    );
  }
}