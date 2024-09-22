import 'package:flutter/material.dart';
import 'package:fmarket/screens/product_detail.dart';

class Category extends StatefulWidget {
  const Category({super.key, required this.category});

  final String category;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> showedList = [];

  @override
  void initState() {
    super.initState();

    if (widget.category == "Fruits") {
      showedList = [
        productCard("Heyva", "10 manat",
            "https://cdn.pixabay.com/photo/2022/10/22/18/10/quince-7539818_1280.jpg",
            isExist: true),
        productCard("Alma", "3 manat",
            "https://cdn.pixabay.com/photo/2014/02/01/17/30/apple-256268_1280.jpg"),
        productCard("Armud", "5 manat",
            "https://media.istockphoto.com/id/509255995/photo/pears-still-life.webp?b=1&s=612x612&w=0&k=20&c=D0_JM2aoaWIY4ejvzCI7-B5ok9_hOGUK5kdVLkJj_os="),
        productCard("Banan", "4 manat",
            "https://cdn.pixabay.com/photo/2015/01/27/18/32/bananas-614090_1280.jpg"),
      ];
    } else if (widget.category == "Vegetables") {
      showedList = [
        productCard("Xiyar", "3 manat",
            "https://media.istockphoto.com/id/2155075324/photo/cucumber-farm-greenhouse-small-business-manager.webp?b=1&s=612x612&w=0&k=20&c=LsUJLVRauyZKRk3aIQLaFjj12fb-g8hZqE9dcnWjAq0="),
        productCard("Pomidor", "2 manat",
            "https://cdn.pixabay.com/photo/2017/05/03/20/49/tomato-2282101_1280.jpg"),
      ];
    } else if (widget.category == "Healthy food") {
      showedList = [
        productCard("Zeytun", "12 manat",
            "https://cdn.pixabay.com/photo/2016/11/29/04/06/olive-oil-1867229_1280.jpg"),
        productCard("Soğan", "1 manat",
            "https://cdn.pixabay.com/photo/2022/10/28/20/33/onion-7553931_1280.jpg"),
      ];
    } else if (widget.category == "Junk food") {
      showedList = [
        productCard("Saqqız", "1 manat",
            "https://media.istockphoto.com/id/1500014046/photo/a-bunch-of-mint-chewing-gum-and-fresh-mint-leaves-on-a-blue-background.jpg?s=2048x2048&w=is&k=20&c=loL_lmr2SVnKWCt2tV3MZMuftTue5UGBJRP_6z8eT3Y="),
        productCard("Chips", "1 manat",
            "https://media.istockphoto.com/id/1970662988/photo/potato-chips-in-wooden-bowl-on-white-table-top-view.webp?b=1&s=612x612&w=0&k=20&c=I_YMvaxFXn1LYrJKrmUyQZpE4sFJhff3yC50r7vGPpE="),
      ];
    }
  }

  Widget productCard(String name, String price, String url,
      {bool isExist = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetail(
                  isExist,
                  name: name,
                  price: price,
                  url: url,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4.0,
                  spreadRadius: 2.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: url,
              child: Container(
                width: 120.0,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.all(10),
      childAspectRatio: 1,
      children: showedList,
    );
  }
}
