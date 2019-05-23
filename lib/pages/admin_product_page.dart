import 'package:flutter/material.dart';
import 'product_manager_page.dart';
import '../admin_product_create.dart';
import '../admin_product_list.dart';

class AdminProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Products'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProductManagerPage())),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Product Admin'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                child: Text('Create Product'),
              ),
              Tab(
                icon: Icon(Icons.list),
                child: Text('My Products'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Text('Create Product'),
            AdminProductCreate(),
            AdminProductList(),
          ],
        ),
      ),
    );
  }
}
