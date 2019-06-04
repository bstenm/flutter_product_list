import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  final Function addProduct;

  AddProductButton(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () => addProduct(),
        child: Text('Add Product'),
      ),
    );
  }
}
