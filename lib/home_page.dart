import 'package:flutter/material.dart';
import 'package:state_mgmt_workshop/cart_page.dart';
import 'package:state_mgmt_workshop/items_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Items',
              icon: Icon(Icons.shopping_bag),
            ),
            Tab(
              text: 'Cart',
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ItemsPage(),
          CartPage(),
        ],
      ),
    );
  }
}
