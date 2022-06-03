import 'package:electroapp/components/arrivals_screen/item_component.dart';
import 'package:electroapp/data/product_model.dart';
import 'package:flutter/material.dart';

class ProductRowComponent extends StatefulWidget {
  final String category;
  const ProductRowComponent({Key? key, required this.category})
      : super(key: key);

  @override
  State<ProductRowComponent> createState() => _ProductRowComponentState();
}

class _ProductRowComponentState extends State<ProductRowComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 8.0,
          ),
          child: Text(
            widget.category,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                for (ProductModel product in products)
                  if (product.category == widget.category)
                    ItemComponent(product: product),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
