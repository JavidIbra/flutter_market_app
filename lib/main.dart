import 'package:flutter/material.dart';
import 'package:fmarket/screens/cart.dart';
import 'package:fmarket/screens/products.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "market",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeNo = 0;
  late List _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const Products(),
      const MyCart(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Flying products",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _screens[_activeNo],
      drawer: Drawer(
        // width: 200,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("SomeOne"),
              accountEmail: const Text("SomeOne@mail.ru"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/01/25/19/48/man-1161337_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50)),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(
              title: Text("Orders"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Discounts"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Parameters"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Exit"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeNo,
        selectedItemColor: Colors.red[300],
        unselectedItemColor: Colors.grey[600],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            tooltip: "Products",
            label: "Products",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), tooltip: "Cart", label: "Cart")
        ],
        onTap: (int tappedNo) {
          setState(() {
            _activeNo = tappedNo;
          });
        },
      ),
    );
  }
}
