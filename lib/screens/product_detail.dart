import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(
    this.isExist, {
    super.key,
    required this.name,
    required this.price,
    required this.url,
  });

  final String name;
  final String price;
  final String url;
  final bool isExist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(tag: url, child: Image.network(url)),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40,
                ))
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Text(
                textAlign: TextAlign.center,
                "Desc",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              decoration: BoxDecoration(
                  color: isExist ? Colors.red[400] : Colors.black,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  isExist ? "Add to Cart" : "Not in stock",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
