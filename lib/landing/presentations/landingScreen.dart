import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get_fisio_mobile_flutter/login/presentations/loginScreen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  static const nameRoutes = '/landing';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: GestureDetector(
                onTap: () =>
                    {Navigator.of(context).pushNamed(LoginScreen.nameRoutes)},
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Image.asset('assets/images/logo.png'))),
                      const Text(
                        'GET FISIO',
                        style: TextStyle(
                            fontFamily: 'NunitoBold',
                            fontSize: 24,
                            color: Color.fromARGB(255, 34, 168, 186),
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ))));
  }
}
