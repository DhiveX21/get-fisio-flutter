import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String? title;
  final String? desc;
  final String? imgSrc;

  const FeatureCard({super.key, this.title, this.desc, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Row(
        children: [
          Container(
            child: Image.asset(
              imgSrc ?? 'assets/images/create_appointment_illustration.png',
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      title ?? 'Konsultasi Fisioterapi secara Online',
                      maxLines: 1,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'NunitoBold',
                          color: Colors.black87),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      desc ?? 'Efektif, On Point, dan Edukatif',
                      maxLines: 2,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'NunitoBold',
                          fontSize: 12,
                          color: Colors.black26),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
