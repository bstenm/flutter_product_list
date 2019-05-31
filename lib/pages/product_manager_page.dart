import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_provider.dart';
import 'package:myapp/blocs/products_bloc.dart';
import '../product_manager.dart';

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
      body: BlocProvider(
        bloc: ProductsBloc(),
        child: ProductManager(),
      ),
    );
  }
}
