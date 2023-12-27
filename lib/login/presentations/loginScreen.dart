import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/login/data/mock/users.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'package:get_fisio_mobile_flutter/register/presentations/registerScreen.dart';
import './widget/socialLogin.dart';
import './widget/loginForm.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  // final Map<String, dynamic> userData = user_mock.mockJson;
  static const nameRoutes = '/login';

  final Map<String, dynamic>? userData = null;

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (userData != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushNamed(DashboardScreen.nameRoutes);
      });
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: HexColor("#22A8BA"),
                      fontSize: 36,
                      fontFamily: 'NunitoBold'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (70 / 100),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset('assets/images/login.png',
                    fit: BoxFit.scaleDown),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: LoginForm(
                    onLoginButtonTap: () {
                      Navigator.of(context).pushNamed(OtpScreen.nameRoutes);
                    },
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.topCenter,
                  child: SocialLogin()),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Belum memiliki akun?',
                    style: TextStyle(
                        fontFamily: 'NunitoBold', color: Colors.black87),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RegisterScreen.nameRoutes);
                    },
                    child: Text(
                      ' Daftar Disini',
                      style: TextStyle(
                          fontFamily: 'NunitoBold', color: HexColor('#22A8BA')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
