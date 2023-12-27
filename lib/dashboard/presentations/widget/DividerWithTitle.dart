import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DividerWithTitle extends StatelessWidget {
  const DividerWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(children: [
          Flexible(
              fit: FlexFit.tight,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  color: HexColor('#F6F6F6'),
                  child: Text(
                    'Latest Article',
                    style: TextStyle(
                        fontFamily: 'NunitoBold',
                        fontSize: 16,
                        color: HexColor('#22A8BA')),
                  )))
        ]));
  }
}
