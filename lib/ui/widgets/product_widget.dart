import 'dart:math';

import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 450,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/img.png", fit: BoxFit.fill),
            ),
          ),
          Expanded(flex: 8, child: Text("Name: ${Random().nextInt(3)}")),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Text("Price: "),
                Text(
                  "${Random().nextInt(6)}\$",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                Text("${Random().nextInt(9)}\$"),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              "1234567890-09876544ee3567opoiuy09876544ee3567opoiuy1234567890-09876544ee3567opoiuy09876544ee3567opoiuy1234567890-09876544ee3567opoiuy09876544ee3567opoiuy1234567890-09876544ee3567opoiuy09876544ee3567opoiuy",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
