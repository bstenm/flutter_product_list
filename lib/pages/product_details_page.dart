import 'package:flutter/material.dart';
import 'product_manager_page.dart';
import '../product_details.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () => Navigator.push(
                  ctx, MaterialPageRoute(builder: (_) => ProductManagerPage())),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: ProductDetails(title, imageUrl),
    );
  }
}
