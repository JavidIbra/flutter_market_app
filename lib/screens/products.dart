import 'package:flutter/material.dart';
import 'package:fmarket/widgets/category.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: controller,
            indicatorColor: Colors.teal[300],
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.teal[300],
            labelStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: const [
              Tab(
                child: Text(
                  "Fruits",
                ),
              ),
              Tab(
                child: Text(
                  "Vegetables",
                ),
              ),
              Tab(
                child: Text(
                  "Healthy food",
                ),
              ),
              Tab(
                child: Text(
                  "Junk food",
                ),
              ),
            ]),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: const [
              Category(
                category: "Fruits",
              ),
              Category(
                category: "Vegetables",
              ),
              Category(
                category: "Healthy food",
              ),
              Category(
                category: "Junk food",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
