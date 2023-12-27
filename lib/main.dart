import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_fisio_mobile_flutter/detailAppointment/presentations/detailAppointmentScreen.dart';
import 'package:get_fisio_mobile_flutter/detailProduct/presentations/detailProductScreen.dart';
import 'package:get_fisio_mobile_flutter/listProduct/presentations/listProductScreen.dart';
import 'package:get_fisio_mobile_flutter/register/presentations/registerScreen.dart';
import 'otp/presentations/otpScreen.dart';
import 'login/presentations/loginScreen.dart';
import 'dashboard/presentations/dashboardScreen.dart';
import 'landing/presentations/landingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingScreen.nameRoutes,
      routes: {
        OtpScreen.nameRoutes: (context) => OtpScreen(),
        LandingScreen.nameRoutes: (context) => LandingScreen(),
        LoginScreen.nameRoutes: (context) => LoginScreen(),
        RegisterScreen.nameRoutes: (context) => RegisterScreen(),
        DashboardScreen.nameRoutes: (context) => DashboardScreen(),
        ListProductScreen.nameRoutes: (context) => ListProductScreen(),
        DetailProductScreen.nameRoutes: (context) => DetailProductScreen(),
      },
    );
  }
}
