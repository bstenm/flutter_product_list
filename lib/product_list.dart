import 'package:flutter/material.dart';
import 'pages/product_details_page.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  ProductList(this.products, this.deleteProduct);

  @override
  Widget build(BuildContext ctx) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext ctx, int index) {

        final String title = products[index]['title'];
        final String imageUrl = products[index]['imageUrl'];

        return Card(
          child: Column(
            children: [
              Image.asset(imageUrl, width: 100, height: 100),
              Text(title),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Details'),
                    onPressed: () => Navigator.push<bool>(
                          ctx,
                          MaterialPageRoute(
                            builder: (BuildContext ctx) =>
                                ProductPage(title, imageUrl),
                          ),
                        ).then((bool value) {
                          if (!value) return;
                          deleteProduct(index);
                        }),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
