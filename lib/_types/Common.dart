import 'package:flutter/material.dart';

class BreadcrumbsItem {
  final String pathName;
  final Function()? onTap;

  BreadcrumbsItem({required this.pathName, this.onTap});
}

class ProductItem {
  final String id;
  final String name;
  final String description;
  final String imgSrc;
  ProductItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.imgSrc});
}
