import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'widget/RegisterForm.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatelessWidget {
  static const nameRoutes = '/register';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Daftar',
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
                child: Image.asset('assets/images/register.png',
                    fit: BoxFit.scaleDown),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Pastikan kamu menggunakan nomor HP yang aktif, kami akan mengirim OTP untuk mengkonfirmasi akun anda.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'NunitoBold',
                    color: HexColor('#5E5E5E'),
                    height: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: RegisterForm(
                  onSubmit: () {
                    Navigator.of(context).pushNamed(OtpScreen.nameRoutes);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
