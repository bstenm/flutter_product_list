import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_provider.dart';
import 'product_list.dart';
import 'add_product_button.dart';
import 'blocs/products_bloc.dart';

class ProductManager extends StatefulWidget {
  ProductManager();

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {

  @override
  Widget build(BuildContext context) {
    ProductsBloc productsBloc = BlocProvider.of<ProductsBloc>(context);

    return Center(
      child: StreamBuilder(
        stream: productsBloc.outStream,
        initialData: [
          {'title': 'Food Tester', 'imageUrl': 'images/lake.jpg'}
        ],
        builder: (_, snapshot) => Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: AddProductButton(productsBloc.addProduct),
                ),
                Expanded(
                  child: Products(
                    snapshot.data,
                    deleteProduct: () {},
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
