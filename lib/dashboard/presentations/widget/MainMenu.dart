import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Wrap(
          spacing: 4.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: 75,
                    height: 75,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/calendar.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Buat Appointment',
                              style: TextStyle(
                                  fontFamily: 'NunitoBold',
                                  fontSize: 10,
                                  color: HexColor("#22A8BA")),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )))),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: 75,
                    height: 75,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/recap.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Rekam Medis',
                              style: TextStyle(
                                  fontFamily: 'NunitoBold',
                                  fontSize: 10,
                                  color: HexColor("#22A8BA")),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )))),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: 75,
                    height: 75,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/telephysio.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Tele Fisio',
                              style: TextStyle(
                                  fontFamily: 'NunitoBold',
                                  fontSize: 10,
                                  color: HexColor("#22A8BA")),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )))),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: 75,
                    height: 75,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/article.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Artikel',
                              style: TextStyle(
                                  fontFamily: 'NunitoBold',
                                  fontSize: 10,
                                  color: HexColor("#22A8BA")),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )))),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: 75,
                    height: 75,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/reminder.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Buat Appointment',
                              style: TextStyle(
                                  fontFamily: 'NunitoBold',
                                  fontSize: 10,
                                  color: HexColor("#22A8BA")),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )))),
          ],
        ));
  }
}
