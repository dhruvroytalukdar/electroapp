import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25.0,
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 10.0,
              ),
              child: Text(
                "15 new arrivals 🔥",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "old tracks",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 243, 25, 25),
                  fontSize: 38.0,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "With new sounds",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.0,
                  letterSpacing: 1.2,
                  fontSize: 78.0,
                ),
              ),
              const SizedBox(height: 11.0),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 165,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(95.0),
                      color: const Color.fromARGB(48, 224, 17, 17),
                    ),
                  ),
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: const Color.fromARGB(55, 224, 17, 17),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.red[500],
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(143, 255, 139, 139),
                          blurRadius: 25.0,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/arrivals');
                      },
                      tooltip: "Get Started 🎉",
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
