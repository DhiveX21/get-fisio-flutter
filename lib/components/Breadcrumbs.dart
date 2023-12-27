import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../_types/Common.dart';

class Breadcrumbs extends StatelessWidget {
  final List<BreadcrumbsItem> item;
  final String separator;

  const Breadcrumbs({super.key, required this.item, required this.separator});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Text(
              ' $separator ',
              style: const TextStyle(
                  fontFamily: 'NunitoBold', color: Colors.black45),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: item!.length,
          itemBuilder: (context, index) {
            return index == 0
                ? (GestureDetector(
                    onTap: () {
                      item[index].onTap!();
                    },
                    child: Text(
                      item[index].pathName,
                      style: TextStyle(
                          color: HexColor('#FF4F5A'),
                          fontFamily: 'NunitoBlack'),
                    ),
                  ))
                : index == item.length - 1
                    ? (GestureDetector(
                        onTap: () {
                          item[index].onTap!();
                        },
                        child: Text(
                          item[index].pathName,
                          style: const TextStyle(
                              color: Colors.black38, fontFamily: 'NunitoBold'),
                        ),
                      ))
                    : GestureDetector(
                        onTap: () {
                          item[index].onTap!();
                        },
                        child: Text(
                          item[index].pathName,
                          style: const TextStyle(
                            color: Colors.black38,
                            fontFamily: 'NunitoExtraBold',
                          ),
                        ),
                      );
          },
        ));
  }
}
