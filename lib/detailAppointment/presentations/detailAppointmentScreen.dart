import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/components/Breadcrumbs.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/landing/presentations/landingScreen.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../_types/Common.dart';
import '../../components/TitleMenu.dart';
import '../../components/cards/FeatureCard.dart';
import '../../dashboard/presentations/widget/Footer.dart';

class DetailAppointmentScreen extends StatelessWidget {
  const DetailAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BreadcrumbsItem> BreadcrumbsData = [
      BreadcrumbsItem(
          pathName: 'Get Fisio',
          onTap: () =>
              Navigator.of(context).pushNamed(LandingScreen.nameRoutes)),
      BreadcrumbsItem(
          pathName: 'Dashboard',
          onTap: () =>
              Navigator.of(context).pushNamed(DashboardScreen.nameRoutes)),
      BreadcrumbsItem(pathName: 'Buat Appointment', onTap: null),
    ];

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset("assets/images/logo.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  const Flexible(
                    flex: 3,
                    child: Card(
                      elevation: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          label: Text('Search'),
                          labelStyle: TextStyle(fontFamily: 'NunitoBold'),
                          suffixIcon: Icon(Icons.search),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset("assets/images/contact-us.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TitleMenu(
                title: 'Buat Appointment',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Breadcrumbs(
                item: BreadcrumbsData,
                separator: '/',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 2,
                color: HexColor('#DEDEDE'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FeatureCard(
                        title: 'Konsultasi Fisioterapi secara Online',
                        desc: 'Efektif, On Point, dan Edukatif',
                        imgSrc:
                            'assets/images/create_appointment_illustration.png',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Detail :',
                          style: TextStyle(
                              color: HexColor('#22A8BA'),
                              fontFamily: 'NunitoBold',
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'COVID-19 pandemic is the biggest challenge for physiotherapists in providing health services to stroke patients, that physiotherapists must take innovative and adaptive approaches to monitor patient progress. Currently, tele-physiotherapy is a global trend that can be applied by physiotherapists during the COVID-19 pandemic to improve secondary health-care for stroke patients. This study aims to determine the effect of tele-physiotherapy on the quality of life of stroke patients during the COVID-19 pandemic. The design of this study was a systematic literature review, the independent variable is tele-physiotherapy and the dependent variable is quality of life with stroke patients as the study subjects.',
                          style: TextStyle(
                              height: 1.7,
                              color: Colors.black45,
                              fontFamily: 'NunitoMedium',
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
