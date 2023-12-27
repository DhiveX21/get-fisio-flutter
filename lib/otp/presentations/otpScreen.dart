import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/widget/otpForm.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpScreen extends StatelessWidget {
  static const nameRoutes = '/otp';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // Menggunakan MediaQuery untuk mendapatkan ukuran layar
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OTP',
                style: TextStyle(
                    color: HexColor("#4694ee"),
                    fontSize: 36,
                    fontFamily: 'NunitoBold'),
              ),
              Container(
                  child: Image.asset(
                'assets/images/otp.png',
                fit: BoxFit.contain,
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    const Text(
                      'Kami telah mengirimkan kode verifikasi ke nomor ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'NunitoBold',
                          fontSize: 14,
                          color: Colors.black87,
                          height: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0895619258715',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'NunitoBlack',
                          fontSize: 18,
                          color: HexColor('#22A8BA'),
                          height: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Silahkan Cek pesan masuk.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'NunitoBold',
                          fontSize: 14,
                          color: Colors.black87,
                          height: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Catatan : jangan beritahu siapapun Kode OTP anda.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'NunitoBold',
                            fontSize: 10,
                            color: HexColor('#FF4F5A'),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: OtpForm(
                  onSubmit: () {
                    Navigator.of(context).pushNamed(DashboardScreen.nameRoutes);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
