import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String desc;
  final String? imgSrc;
  final VoidCallback? onPressed;

  const ArticleCard(
      {required this.title, required this.desc, this.imgSrc, this.onPressed});

  // const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20), // Adjust the value as needed
          ),
          color: Colors.white,
          child: Row(children: [
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imgSrc ?? 'assets/images/logo.png',
                          height: 125,
                          fit: BoxFit.cover,
                        )))),
            Flexible(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              color: HexColor('#22A8BA'),
                              fontFamily: 'NunitoBold'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                              fontSize: 12,
                              color: HexColor('#5E5E5E'),
                              fontFamily: 'NunitoLight'),
                          maxLines: 3,
                        ),
                      ],
                    )))
          ]),
        ));
  }
}
