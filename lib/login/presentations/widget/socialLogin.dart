import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialLogin extends StatefulWidget {
  @override
  _SocialLoginState createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
      const Text('atau',
          style: TextStyle(
              color: Colors.black54, fontFamily: 'NunitoBold', fontSize: 24)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              child: IconButton(
            onPressed: () => {},
            icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/images/twitter.png',
                  fit: BoxFit.contain,
                )),
            iconSize: 50,
          )),
          GestureDetector(
              child: IconButton(
            onPressed: () => {},
            icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/images/google.png',
                  fit: BoxFit.contain,
                )),
            iconSize: 50,
          )),
          GestureDetector(
              child: IconButton(
            onPressed: () => {},
            icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/images/facebook.png',
                  fit: BoxFit.contain,
                )),
            iconSize: 50,
          ))
        ],
      )
    ]));
  }
}
