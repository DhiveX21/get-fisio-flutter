import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(45),
      child: Column(children: [
        Divider(),
        Column(
          children: [
            Text(
              'Kontak Kami',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor('#22A8BA'),
                  fontFamily: 'NunitoBold',
                  fontSize: 16),
            ),
            Text(
              '0895619258715',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: HexColor('5E5E5E'),
                  fontFamily: 'NunitoMedium'),
            ),
          ],
        ),
        SizedBox(height: 30),
        Column(
          children: [
            Text(
              'Alamat Kami',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor('#22A8BA'),
                  fontFamily: 'NunitoBold',
                  fontSize: 16),
            ),
            Text(
              'Jl. Johar No.1A, RT.5/RW.3, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: HexColor('5E5E5E'),
                  fontFamily: 'NunitoMedium'),
            ),
          ],
        ),
        SizedBox(height: 30),
        Column(
          children: [
            Text(
              'Sosial Media Kami',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor('#22A8BA'),
                  fontFamily: 'NunitoBold',
                  fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/youtube.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/linkedin.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/instagram.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/telegram.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/twitterIcon.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
