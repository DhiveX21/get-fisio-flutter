// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get_fisio_mobile_flutter/_types/Common.dart';
import 'package:get_fisio_mobile_flutter/detailAppointment/presentations/detailAppointmentScreen.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/ArticleCard.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/DividerWithTitleAndButton.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/Footer.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/LastAppointmentCard.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/MainMenu.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/TestimonialCarousel.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/dividerWithTitle.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/widget/mainCarousel.dart';
import 'package:get_fisio_mobile_flutter/detailProduct/presentations/detailProductScreen.dart';
import 'package:get_fisio_mobile_flutter/landing/presentations/landingScreen.dart';
import 'package:get_fisio_mobile_flutter/listProduct/presentations/listProductScreen.dart';
import 'package:get_fisio_mobile_flutter/otp/presentations/otpScreen.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../components/Breadcrumbs.dart';

class DashboardScreen extends StatelessWidget {
  static const nameRoutes = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BreadcrumbsItem> BreadcrumbsData = [
      BreadcrumbsItem(
          pathName: 'Get Fisio',
          onTap: () {
            Navigator.of(context).pushNamed(LandingScreen.nameRoutes);
          }),
      BreadcrumbsItem(
          pathName: 'Dashboard',
          onTap: () {
            Navigator.of(context).pushNamed(DashboardScreen.nameRoutes);
          }),
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
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Image.asset("assets/images/contact-us.png",
                                fit: BoxFit.contain))),
                  ],
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: [
                    Row(children: [
                      Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ListProductScreen.nameRoutes);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: HexColor('#FF8B92'),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/calendar.png',
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        "Buat Appointment",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'NunitoBold'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: HexColor('#22A8BA'),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/recap.png',
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        "Rekam Medis",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'NunitoBold'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ],
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MainCarousel(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Breadcrumbs(
                item: BreadcrumbsData,
                separator: '/',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: LastAppointmentCard(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MainMenu(),
            ),
            DividerWithTitle(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                ArticleCard(
                  desc: 'Article Get Fisio',
                  title: 'Backpain yang sangat menggangu.',
                  imgSrc: 'assets/images/servicelist_2.png',
                  onPressed: () {
                    // Navigate to OTPScreen when the button is pressed
                    Navigator.of(context).pushNamed(OtpScreen.nameRoutes);
                  },
                ),
                ArticleCard(
                  desc: 'Article Get Fisio',
                  title: 'Fisioterapi terhadap autoimune',
                  imgSrc: 'assets/images/servicelist_1.png',
                  onPressed: () {
                    // Navigate to OTPScreen when the button is pressed
                    Navigator.of(context).pushNamed(OtpScreen.nameRoutes);
                  },
                ),
                ArticleCard(
                  desc: 'Article Get Fisio',
                  title: 'Physio for urinary Incontinence',
                  imgSrc: 'assets/images/servicelist_3.png',
                  onPressed: () {
                    // Navigate to OTPScreen when the button is pressed
                    Navigator.of(context).pushNamed(OtpScreen.nameRoutes);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the value as needed
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor('#22A8BA'))),
                    onPressed: () => {},
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontFamily: 'NunitoMedium',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            DividerWithTitleAndButton(
              title: 'Berlangganan Newsletter kami, secara gratis.',
              button: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value as needed
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(HexColor('#FF4F5A'))),
                onPressed: () => {},
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Langganan',
                    style: TextStyle(
                        fontFamily: 'NunitoMedium',
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            const TestimonialCarousel(
              carouselItem: [
                CarouselItem(
                    imgSrc: 'assets/images/testimonial_1.png',
                    desc:
                        'Aku merasakan manfaat melakukan fisioterapi di getfit, Fisio Rifa sangat membantu mengajarkan stretching dan setelah selesai fisioterapi 3x aku lanjut jaga postur dan lakukan stretching di rumah, Allhamdulillah keluhan di pinggang dan kaki berangsur membaik dan sekarang merasa lebih enak.'),
                CarouselItem(
                    imgSrc: 'assets/images/testimonial_1.png',
                    desc:
                        'Aku merasakan manfaat melakukan fisioterapi di getfit, Fisio Rifa sangat membantu mengajarkan stretching dan setelah selesai fisioterapi 3x aku lanjut jaga postur dan lakukan stretching di rumah, Allhamdulillah keluhan di pinggang dan kaki berangsur membaik dan sekarang merasa lebih enak.'),
                CarouselItem(
                    imgSrc: 'assets/images/testimonial_1.png',
                    desc:
                        'Aku merasakan manfaat melakukan fisioterapi di getfit, Fisio Rifa sangat membantu mengajarkan stretching dan setelah selesai fisioterapi 3x aku lanjut jaga postur dan lakukan stretching di rumah, Allhamdulillah keluhan di pinggang dan kaki berangsur membaik dan sekarang merasa lebih enak.'),
              ],
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
