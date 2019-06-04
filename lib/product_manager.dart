import 'package:flutter/material.dart';
import 'package:myapp/product_list.dart';
import 'package:myapp/state/products_bloc.dart';
import 'add_product_button.dart';
import 'package:provider/provider.dart';

class ProductManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductsBloc productsBloc = Provider.of<ProductsBloc>(context);

    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: AddProductButton(productsBloc.addProduct),
          ),
          Expanded(
            child: ProductList(productsBloc.products, productsBloc.deleteProduct),
          ),
        ],
      ),
    );
  }
}
