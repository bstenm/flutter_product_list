import 'package:flutter/material.dart';
import 'pages/product.dart';

class Products extends StatelessWidget {
  final List<Map> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext ctx, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset(products[index]['imageUrl'], width: 100, height: 100),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      ctx,
                      MaterialPageRoute(
                        builder: (BuildContext ctx) => ProductPage(
                            products[index]['title'],
                            products[index]['imageUrl']),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: _buildProductItem,
    );
  }
}
