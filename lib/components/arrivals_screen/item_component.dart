import 'package:electroapp/data/product_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemComponent extends StatefulWidget {
  final ProductModel product;
  const ItemComponent({Key? key, required this.product}) : super(key: key);

  @override
  State<ItemComponent> createState() => _ItemComponentState();
}

class _ItemComponentState extends State<ItemComponent> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(locale: "en_US", symbol: "€");

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 15.0,
      ),
      child: SizedBox(
        width: 250.0,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: widget.product.bgColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset(widget.product.imageUrl),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      formatCurrency.format(widget.product.price),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: isLiked
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 34.0,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          size: 34.0,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
