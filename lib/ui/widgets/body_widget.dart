import 'package:flutter/material.dart';
import 'package:ok/ui/widgets/product_widget.dart';

import '../../data/model/product.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  static const List<Product> products = [
    Product(
      id: 36,
      name: "ok",
      price: 36,
      description: "xxx",
      image: "assets/images/img.png",
    ),
    Product(
      id: 69,
      name: "ko",
      price: 69,
      description: "yyy",
      image: "assets/images/img.png",
    ),
    Product(
      id: 96,
      name: "",
      price: 96,
      description: "zzz",
      image: "assets/images/img.png",
    ),Product(
      id: 69,
      name: "ko",
      price: 69,
      description: "yyy",
      image: "assets/images/img.png",
    ),
    Product(
      id: 69,
      name: "ko",
      price: 69,
      description: "yyy",
      image: "assets/images/img.png",
    ),
    Product(
      id: 69,
      name: "ko",
      price: 69,
      description: "yyy",
      image: "assets/images/img.png",
    ),
    Product(
      id: 69,
      name: "ko",
      price: 69,
      description: "yyy",
      image: "assets/images/img.png",
    ),

  ];

  @override
  Widget build(BuildContext context) => GridView.count(
    crossAxisCount: 3,
    children: products.map((p) => ProductWidget(product: p)).toList(),
  );
}
