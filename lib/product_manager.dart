import 'package:flutter/material.dart';
import 'products.dart';
import 'add_product_button.dart';

class ProductManager extends StatefulWidget {
  ProductManager({this.initialProduct});

  final String initialProduct;

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  void initState() {
    _products.add(widget.initialProduct);
    super.initState();
  }

  void _addProduct(String product) {
    setState(() => {_products.add(product)});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: AddProductButton(_addProduct),
          ),
          Expanded(child: Products(_products)),
        ],
      ),
    );
  }
}
