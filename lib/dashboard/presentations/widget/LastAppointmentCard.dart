import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LastAppointmentCard extends StatelessWidget {
  const LastAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Adjust the value as needed
        ),
        color: HexColor('#DFDFDF'),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/physio.png',
                    width: 100,
                  ))),
          Flexible(
              fit: FlexFit.tight,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rifa Rahmalia. Amd. Ft',
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#22A8BA'),
                            fontFamily: 'NunitoBlack'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Perbanyak konsumsi makan dan minuman yang banyak mengandung Kalsium. serta perbanyak istirahat dan Olahraga secara rutin.',
                        style: TextStyle(
                            fontSize: 10,
                            color: HexColor('#7F7F7F'),
                            fontFamily: 'NunitoBold'),
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '19 September 2022',
                        style: TextStyle(
                            fontSize: 12,
                            color: HexColor('#FF4F5A'),
                            fontFamily: 'NunitoBold'),
                      ),
                    ],
                  )))
        ]),
      ),
    );
  }
}
