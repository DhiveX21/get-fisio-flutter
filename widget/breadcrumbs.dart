import 'package:flutter/material.dart';

class Breadcrumbs extends StatelessWidget {
  final List<BreadcrumbItem> items;

  Breadcrumbs({required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        items.length,
        (index) {
          return Row(
            children: [
              BreadcrumbItemWidget(
                item: items[index],
                isFirst: index == 0,
                isLast: index == items.length - 1,
              ),
              if (index < items.length - 1) Icon(Icons.arrow_forward),
            ],
          );
        },
      ),
    );
  }
}

class BreadcrumbItem {
  final String label;
  final VoidCallback? onPressed;

  BreadcrumbItem({required this.label, this.onPressed});
}

class BreadcrumbItemWidget extends StatelessWidget {
  final BreadcrumbItem item;
  final bool isFirst;
  final bool isLast;

  BreadcrumbItemWidget(
      {required this.item, required this.isFirst, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isFirst)
            SizedBox(
                width: 4), // Add spacing before items (except the first one)
          Text(
            item.label,
            style: TextStyle(
              fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
