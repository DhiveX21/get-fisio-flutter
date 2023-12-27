import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleMenu extends StatelessWidget {
  final Color? color;
  final String? title;
  final String? imgSrc;

  const TitleMenu({super.key, this.color, this.title, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15.0), // Adjust the radius as needed
      ),
      color: color ?? HexColor('#22A8BA'),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                  imgSrc ?? 'assets/images/create_appointment.png',
                  width: 80),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 2,
              child: Text(
                title ?? 'Title',
                style: const TextStyle(
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                    fontFamily: 'NunitoBold'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
