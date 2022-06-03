import 'package:electroapp/components/arrivals_screen/product_row.dart';
import 'package:electroapp/data/product_model.dart';
import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    height: 62,
                    width: 62,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: 1,
                        image: AssetImage("assets/images/user.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "New Arrivals",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.category,
                        size: 32.0,
                      ),
                    ],
                  ),
                ),
                for (String category in categories)
                  ProductRowComponent(category: category),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
