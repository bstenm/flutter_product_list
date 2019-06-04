import 'package:flutter/material.dart';
import 'package:myapp/state/products_bloc.dart';
import 'package:myapp/product_manager.dart';
import 'package:provider/provider.dart';

class ProductManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Admin Products'),
              onTap: () => Navigator.pushReplacementNamed(context, '/admin'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Product Manager'),
      ),
      body: ChangeNotifierProvider(
        builder: (_) => ProductsBloc(),
        child: ProductManager(),
      ),
    );
  }
}
