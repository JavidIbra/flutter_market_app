import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 15),
        Center(
          child: Text(
            "Cart",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red[400]),
          ),
        ),
        const ListTile(
          title: Text(
            "test",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          subtitle: Text(
            "test11",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          trailing: Text(
            "3 qepik",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ),
        const ListTile(
          title: Text(
            "test",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          subtitle: Text(
            "test11",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          trailing: Text(
            "3 qepik",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[400],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    "30 qepik",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[400],
            ),
            child: const Center(
              child: Text(
                "finish",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
