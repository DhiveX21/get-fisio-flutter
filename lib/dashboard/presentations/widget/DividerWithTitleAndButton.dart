import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DividerWithTitleAndButton extends StatelessWidget {
  final String title;
  final Widget button;
  const DividerWithTitleAndButton({required this.title, required this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Flexible(
        fit: FlexFit.tight,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          color: HexColor('#F6F6F6'),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'NunitoBold',
                  fontSize: 20,
                  color: HexColor('#22A8BA')),
            ),
            Container(margin: const EdgeInsets.only(top: 20), child: button),
          ]),
        ),
      ),
    );
  }
}
