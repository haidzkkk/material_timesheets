
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class HeaderPremiumWidget extends StatelessWidget {
  const HeaderPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.05),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                textAlign: TextAlign.end,
                text: const TextSpan(
                    style: TextStyle(fontSize: 16),
                    children:  <TextSpan>[
                      TextSpan(text: "Try", style: greyHeader),
                      TextSpan(
                        text: " Supper Greg ",
                        style: greyBoldHeader,
                      ),
                      TextSpan(text: "for Free", style: greyHeader),
                    ]
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: const Text("Unlock everything happy pants need.", textAlign: TextAlign.center, style: headerTitleStyle,)),
            ],
          )
        ],
      ),
    );
  }
}
