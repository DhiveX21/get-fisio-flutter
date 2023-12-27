import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/components/Breadcrumbs.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/detailAppointment/presentations/detailAppointmentScreen.dart';
import 'package:get_fisio_mobile_flutter/detailProduct/presentations/detailProductScreen.dart';
import 'package:get_fisio_mobile_flutter/landing/presentations/landingScreen.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../_types/Common.dart';
import '../../components/TitleMenu.dart';
import '../../components/cards/FeatureCard.dart';
import '../../dashboard/presentations/widget/Footer.dart';

class ListProductScreen extends StatelessWidget {
  static const nameRoutes = 'product';
  const ListProductScreen({super.key});

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
      BreadcrumbsItem(
          pathName: 'List Produk',
          onTap: () =>
              Navigator.of(context).pushNamed(ListProductScreen.nameRoutes)),
    ];

    List<ProductItem> ProductData = [
      ProductItem(
          name: 'Konsultasi Fisioterapi secara online.',
          description: 'Efektif, On Point, dan Edukatif',
          id: '1',
          imgSrc: 'assets/images/create_appointment_illustration.png'),
      ProductItem(
          name: 'Pemeriksaan Sendi.',
          description: 'Efektif, On Point, dan Edukatif',
          id: '2',
          imgSrc: 'assets/images/product_2.png'),
      ProductItem(
          name: 'Pemeriksaan Otot dan Tulang',
          description: 'Efektif, On Point, dan Edukatif',
          id: '3',
          imgSrc: 'assets/images/product_3.png'),
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
                title: 'Daftar Produk',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Breadcrumbs(
                item: BreadcrumbsData,
                separator: '/',
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ProductData.length,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        DetailProductScreen.nameRoutes,
                        arguments: ProductData[index].id);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FeatureCard(
                      title: ProductData[index].name,
                      desc: ProductData[index].description,
                      imgSrc: ProductData[index].imgSrc,
                    ),
                  ),
                );
              },
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
