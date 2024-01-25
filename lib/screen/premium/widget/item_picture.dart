
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPicture extends StatelessWidget {
  ItemPicture({
    super.key,
    required this.url,
    required this.width,
    required this.height,
  });

  String url;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      foregroundDecoration: borderDecoration,
      decoration: borderDecoration,
      child: Image.network(url, fit: BoxFit.fill),
    );
  }

  BoxDecoration borderDecoration = BoxDecoration(
      borderRadius: BorderRadiusDirectional.circular(30),
      border: Border.all(
        color: Colors.brown.shade100,
        width: 5,
      )
  );
}
