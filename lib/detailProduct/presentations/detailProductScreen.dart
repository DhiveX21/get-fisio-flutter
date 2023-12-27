import 'package:flutter/material.dart';
import 'package:get_fisio_mobile_flutter/components/Breadcrumbs.dart';
import 'package:get_fisio_mobile_flutter/dashboard/presentations/dashboardScreen.dart';
import 'package:get_fisio_mobile_flutter/detailProduct/data/mock/product.dart';
import 'package:get_fisio_mobile_flutter/landing/presentations/landingScreen.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../_types/Common.dart';
import '../../components/TitleMenu.dart';
import '../../components/cards/FeatureCard.dart';
import '../../dashboard/presentations/widget/Footer.dart';

class DetailProductScreen extends StatelessWidget {
  static const nameRoutes = '/detail_product';
  static const productData = product_mock.mockJson;
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Object? productId = ModalRoute.of(context)!.settings.arguments;

    var productDetailData =
        productData.firstWhere((item) => item['id'] == productId);

    print(productDetailData['name']);

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
                      FeatureCard(
                        title: productDetailData['name'],
                        desc: productDetailData['description'],
                        imgSrc: productDetailData['imgSrc'],
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          productDetailData['description'] ??
                              'No Description Available',
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
