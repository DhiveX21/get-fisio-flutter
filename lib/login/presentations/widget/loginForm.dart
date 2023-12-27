import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginForm extends StatefulWidget {
  // Declare variables that will be passed to the constructor
  final void Function()? onLoginButtonTap;

  // Constructor to receive values
  const LoginForm({Key? key, this.onLoginButtonTap}) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late Future<dynamic> _onLoginButtonTap;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter text...',
              labelText: 'No Handphone',
              labelStyle: TextStyle(
                  fontFamily: 'NunitoBold', color: HexColor('#22A8BA')),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: HexColor('#22A8BA')),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: HexColor('#ABABAB'), width: 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              fillColor: HexColor("#E6F0F1"),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            )),
      ),
      SizedBox(
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: ElevatedButton(
              onPressed: widget.onLoginButtonTap,
              style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('#22A8BA'),
                  padding: const EdgeInsets.all(10),
                  minimumSize: const Size(1000, 20)),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18, fontFamily: 'NunitoBold'),
              ),
            )),
      )
    ]));
  }
}
